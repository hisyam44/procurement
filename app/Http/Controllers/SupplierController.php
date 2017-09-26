<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Supplier;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $suppliers = Supplier::orderBy('created_at','desc')->get();
        return view('supplier.index',['suppliers' => $suppliers]);
    }

    public function supplierCompletion(Request $request){
        $locations = Supplier::where('name','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'value' => $location->name,
                'id' => $location->id,
                'name' => $location->name,
                'address' => $location->address,
                'attn' => $location->attn,
                'no' => $location->no
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
    public function create()
    {
        $no_voucher = Supplier::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = \Carbon\Carbon::now()->year." - ".sprintf('%04d',$no_voucher);
        return view('supplier.create',['no' => $no_voucher]);
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
        $supplier = new Supplier();
        $supplier->no = $request->no;
        $supplier->type = $request->type;
        $supplier->name = $request->name;
        $supplier->address = $request->address;
        $supplier->phone = $request->phone;
        $supplier->attn = $request->attn;
        $supplier->email = $request->email;
        $supplier->contact = $request->contact;
        $supplier->description = $request->description;
        $success = $supplier->save();
         if($success){
            \Session::flash('message','Successfully Added Data'); 
        }
        return redirect('/supplier');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return view('error');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('error');
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
        return view('error');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $purchase = Supplier::findOrFail($id);
        $success = $purchase->delete();
         if($success){
            \Session::flash('message','Successfully Erased Data'); 
        }
        return redirect('/supplier');
    }
}
