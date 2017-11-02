<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Purchase;
use App\Unit;
use App\Item;
use PDF;

class PurchaseController extends Controller
{
    function __construct(){
        $this->middleware('redirect.operator',['only' => ['show','edit','upadate','destroy','approve']]);
        $this->middleware('redirect.supervisior',['except' => ['index','printPurchase']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $purchases = Purchase::orderBy('id','desc')->paginate(15);
        return view('purchase.index',['purchases' => $purchases]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('purchase.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return response()->json($request->all());
        $no_voucher = Purchase::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = sprintf('%05d',$no_voucher);

        $purchase = new Purchase();
        $user = \Auth::user();
        $purchase->operator_id = $user->id;
        $purchase->unit_id = $request->unit_id;
        $purchase->no = $no_voucher;
        $purchase->type = $request->type;
        $purchase->department = $request->department;
        $purchase->mol = $request->mol;
        $purchase->km_hm = $request->km_hm;
        $purchase->warehouse_manager = $request->warehouse_manager;
        $purchase->maintenance_manager = $request->maintenance_manager;
        $purchase->project_manager = $request->project_manager;
        $purchase->purpose = $request->purpose;
        $purchase->created_at = $request->created_at;
        $success = $purchase->save();
        for($i=0;$i<count($request->item_id);$i++){
            $req = new \App\Request;
            $req->part_no_id = $request->item_id[$i];
            $req->component = $request->component[$i];
            $req->description = $request->description[$i];
            $req->qty = $request->qty[$i];
            $req->model = $request->model[$i];
            $req->damage_description = $request->damage_description[$i];
            $success = $purchase->requests()->save($req);
        }
        if($success){
            \Session::flash('message','Added New Data'); 
        }
        return redirect('/purchase');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        $purchase = Purchase::findOrFail($id);
        $pdf = PDF::loadView('purchase.details2',['purchase' => $purchase]);
        if($request->print === "1"){
            return $pdf->setPaper('a4', 'landscape')->download('PurchaseRequest'.sprintf('%05d',$purchase->id).'.pdf');
        }
        //return response()->json($purchase->orders);
        return view('purchase.details2',['purchase' => $purchase]);
    }

    public function printPurchase($id){
        $purchase = Purchase::findOrFail($id);
        $pdf = PDF::loadView('purchase.details2',['purchase' => $purchase]);
        //return view('purchase.details2',['purchase' => $purchase]);
        return $pdf->setPaper('a4', 'landscape')->download('PurchaseRequest'.sprintf('%05d',$purchase->id).'.pdf');
    }

    public function purchaseCompletion(Request $request){
        $locations = Purchase::where('no','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'value' => $location->no,
                'id' => $location->id,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $purchase = Purchase::findOrFail($id);
        return view('purchase.edit',['purchase' => $purchase]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //return response()->json($request->all());
        $purchase = Purchase::findOrFail($id);
        $purchase->unit_id = $request->unit_id;
        $purchase->no = $request->no;
        $purchase->type = $request->type;
        $purchase->department = $request->department;
        $purchase->mol = $request->mol;
        $purchase->km_hm = $request->km_hm;
        $purchase->warehouse_manager = $request->warehouse_manager;
        $purchase->maintenance_manager = $request->maintenance_manager;
        $purchase->project_manager = $request->project_manager;
        $purchase->purpose = $request->purpose;
        $purchase->created_at = $request->created_at;
        $success = $purchase->save();
        foreach($purchase->requests as $i => $req){
            $req->part_no_id = $request->item_id[$i];
            $req->component = $request->component[$i];
            $req->description = $request->description[$i];
            $req->qty = $request->qty[$i];
            $req->model = $request->model[$i];
            $req->damage_description = $request->damage_description[$i];
            $success = $req->save();
        }
        if($success){
            \Session::flash('message','Data Has Been Changed'); 
        }
        return redirect('/purchase');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $purchase = Purchase::findOrFail($id);
        $success = $purchase->delete();
         if($success){
            \Session::flash('message','Data Has Been Erased'); 
        }
        return redirect('/purchase');
    }

    public function approve($id){
        $purchase = Purchase::findOrFail($id);
        $user = \Auth::user();
        if($user->role == "admin"){
            if($purchase->admin_id != 0){
                \Session::flash('message','Data Has Been Already Approved');
                return redirect('/purchase');
            }
            $purchase->admin_id = $user->id;
        }else{
            if($purchase->hod_id != 0){
                \Session::flash('message','Data Has Been Already Approved');
                return redirect('/purchase');
            }
            $purchase->hod_id = $user->id;
        }
        $success = $purchase->save();
        if($success){
            \Session::flash('message','Data Has Been Approved'); 
        }
        return redirect('/purchase');
    }

    public function unitCompletion(Request $request){
        $locations = Unit::where('code','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->code
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function itemCompletion(Request $request){
        $locations = \App\PartNo::where('code','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->code,
                'uom' => $location->item->uom,
                'component' => $location->item->component,
                'description' => $location->item->description,
                'item_code' => $location->item->item_no
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function itemCodeCompletion(Request $request){
        $locations = \App\Item::where('item_no','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->item_no
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function accountingCompletion(Request $request){
        $locations = \App\Accounting::where('name','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->name,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function locationCompletion(Request $request){
        $locations = \App\Location::where('name','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->name,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

}
