<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Material;
use PDF;

class MaterialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $materials = Material::orderBy('created_at','desc')->paginate(15);
        return view('material.index',['materials' => $materials]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('material.create');
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
        $material = new Material();
        $material->unit_id = $request->unit_id;
        $material->order_id = $request->order_id;
        $material->deliveryman = $request->deliveryman;
        $material->lokasi = $request->lokasi;
        $material->diketahui = $request->diketahui;
        $material->diterima = $request->diterima;
        $material->created_at = $request->created_at;
        $success = $material->save();
        for($i=0;$i<count($request->partno_id);$i++){
            $materialitem = new \App\MaterialItem();
            $materialitem->partno_id = $request->partno_id[$i];
            $materialitem->part_name = $request->part_name[$i];
            $materialitem->qty = $request->qty[$i];
            $materialitem->net = $request->net[$i];
            $materialitem->description = $request->description[$i];
            $success = $material->items()->save($materialitem);
        }
        if($success){
            \Session::flash('message','Berhasil Menambahkan Data'); 
        }
        return redirect('/material');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        $material = Material::findOrFail($id);
        $pdf = PDF::loadView('material.details',['material' => $material]);
        if($request->print === "1"){
            return $pdf->setPaper('a4', 'portait')->download('MaterialReceipt'.sprintf('%05d',$material->id).'.pdf');
        }
        return view('material.details',['material' => $material]);
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
        $purchase = Material::findOrFail($id);
        $success = $purchase->delete();
         if($success){
            \Session::flash('message','Berhasil Menghapus Data'); 
        }
        return redirect('/material');
    }
}
