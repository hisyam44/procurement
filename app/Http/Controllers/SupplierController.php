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
        $locations = Supplier::where('no','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'value' => $location->no,
                'id' => $location->id,
                'name' => $location->name,
                'address' => $location->address,
                'attn' => $location->attn,
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
        return view('supplier.create');
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
        $supplier->name = $request->name;
        $supplier->address = $request->address;
        $supplier->phone = $request->phone;
        $supplier->attn = $request->attn;
        $success = $supplier->save();
         if($success){
            \Session::flash('message','Berhasil Menambahkan Data'); 
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
        $purchase = Supplier::findOrFail($id);
        $success = $purchase->delete();
         if($success){
            \Session::flash('message','Berhasil Menghapus Data'); 
        }
        return redirect('/supplier');
    }
}
