<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Order;
use PDF;

class OrderController extends Controller
{
    function __construct(){
        $this->middleware('redirect.operator',['except' => ['index','create','store','orderCompletion']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders = Order::orderBy('reference_no','asc')->with('orderitem')->paginate(15);
        //return response()->json($orders);
        return view('order.index',['orders' => $orders]);
    }

    public function orderCompletion(Request $request){
        $locations = Order::where('no','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'value' => $location->no,
                'id' => $location->id,
                'supplier' => $location->supplier->name
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $no_voucher = Order::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = " 1-".sprintf('%03d',$no_voucher);
        if(isset($request->pr)){
            $purchase = \App\Purchase::findOrFail($request->pr);
            return view('order.create2',['no_voucher' => $no_voucher,'purchase' => $purchase]);
        }
        return view('order.create',['no_voucher' => $no_voucher]);
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
        $order = new Order();
        $order->supplier_id = $request->supplier_id;
        $order->purchase_id = $request->purchase_id;
        $user = \Auth::user();
        $order->operator_id = $user->id;
        $order->type = $request->type;
        $order->no = $request->type.$request->no;
        $order->address = '51, Jl Raya Pekajangan Kec Kedungwuni, Kab Pekalongan Jawa Tengah , 51173 logistic.pbtr@sumbermitrajaya.com';
        $order->reference_no = $request->reference_no;
        $order->dispatch_to = $request->dispacth_to;
        $order->dispatch_address = $request->dispacth_address;
        $order->dispatch_name = $request->dispacth_name;
        $order->payment_term = $request->payment_term;
        $order->incoterms = $request->incoterms;
        $order->ship_by  = $request->ship_by;
        $order->delivery_date = $request->delivery_date;
        $order->sub_total = $request->sub_total;
        $order->tax = $request->tax;
        $order->diskon = $request->diskon;
        $order->total = $request->total;
        $order->warranty = $request->warranty;
        $order->author = $request->author;
        $order->diketahui = $request->diketahui;
        $order->created_at = $request->created_at;
        $success = $order->save();
        for($i=0;$i<count($request->qty);$i++){
            $order_item = new \App\OrderItem();
            $order_item->item_id = $request->item_code[$i];
            $order_item->qty = $request->qty[$i];
            $order_item->unit_price = $request->unit_price[$i];
            $order_item->description = $request->description[$i];
            $success = $order->orderitem()->save($order_item);
        }
        if($success){
            \Session::flash('message','Added New Data'); 
        }
        return redirect('/order');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        $order = Order::findOrFail($id);
        $pdf = PDF::loadView('order.details',['order' => $order]);
        if($request->print === "1"){
            return $pdf->setPaper('a4', 'landscape')->download('PurchaseOrder'.sprintf('%05d',$order->id).'.pdf');
        }
        return view('order.details',['order' => $order]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $order = Order::findOrFail($id);
        return view('order.edit',['order' => $order]);
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
        $order = Order::findOrFail($id);
        $order->supplier_id = $request->supplier_id;
        $order->purchase_id = $request->purchase_id;
        $order->type = $request->type;
        $order->no = $request->no;
        //$order->address = '51, Jl Raya Pekajangan Kec Kedungwuni, Kab Pekalongan Jawa Tengah , 51173 logistic.pbtr@sumbermitrajaya.com';
        $order->reference_no = $request->reference_no;
        $order->dispatch_to = $request->dispacth_to;
        $order->dispatch_address = $request->dispacth_address;
        $order->dispatch_name = $request->dispacth_name;
        $order->payment_term = $request->payment_term;
        $order->incoterms = $request->incoterms;
        $order->ship_by  = $request->ship_by;
        $order->delivery_date = $request->delivery_date;
        $order->sub_total = $request->sub_total;
        $order->tax = $request->tax;
        $order->diskon = $request->diskon;
        $order->total = $request->total;
        $order->warranty = $request->warranty;
        $order->author = $request->author;
        $order->diketahui = $request->diketahui;
        $order->created_at = $request->created_at;
        $success = $order->save();
        foreach($order->orderitem as $i => $order_item){
            $order_item->item_id = $request->item_code[$i];
            $order_item->qty = $request->qty[$i];
            $order_item->unit_price = $request->unit_price[$i];
            $order_item->description = $request->description[$i];
            $success = $order_item->save();
        }
        if($success){
            \Session::flash('message','Data Has Been Changed'); 
        }
        return redirect('/order');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $purchase = Order::findOrFail($id);
        $success = $purchase->delete();
         if($success){
            \Session::flash('message','Data Has Been Erased'); 
        }
        return redirect('/order');
    }

    public function approve($id){
        $purchase = Order::findOrFail($id);
        $user = \Auth::user();
        if($user->role == "admin"){
            if($purchase->admin_id != 0){
                \Session::flash('message','Data Has Been Already Approved');
                return redirect('/order');
            }
            $purchase->admin_id = $user->id;
        }else{
            if($purchase->hod_id != 0){
                \Session::flash('message','Data Has Been Already Approved');
                return redirect('/order');
            }
            $purchase->hod_id = $user->id;
        }
        $success = $purchase->save();
        if($success){
            \Session::flash('message','Data Has Been Approved'); 
        }
        return redirect('/order');
    }

}
