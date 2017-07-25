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
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $purchases = Purchase::all();
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
        $purchase = new Purchase();
        $purchase->unit_id = $request->unit_id;
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
            $req->item_id = $request->item_id[$i];
            $req->component = $request->component[$i];
            $req->description = $request->description[$i];
            $req->qty = $request->qty[$i];
            $req->model = $request->model[$i];
            $req->damage_description = $request->damage_description[$i];
            $success = $purchase->requests()->save($req);
        }
        if($success){
            \Session::flash('message','Berhasil Menambahkan Data'); 
        }
        return redirect('/purchase');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $purchase = Purchase::findOrFail($id);
        return view('purchase.details',['purchase' => $purchase]);
    }

    public function printPurchase($id){
        $purchase = Purchase::findOrFail($id);
        $pdf = PDF::loadView('purchase.details2',['purchase' => $purchase]);
        //return view('purchase.details2',['purchase' => $purchase]);
        return $pdf->setPaper('a4', 'landscape')->download('PurchaseRequest'.sprintf('%05d',$purchase->id).'.pdf');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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
            \Session::flash('message','Berhasil Menghapus Data'); 
        }
        return redirect('/purchase');
    }

    public function unitCompletion(Request $request){
        $locations = Unit::where('code','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->code.'( '.$location->type.' )'
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function itemCompletion(Request $request){
        $locations = Item::where('part_no','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->part_no,
                'uom' => $location->uom
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

}
