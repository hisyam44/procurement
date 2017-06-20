<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Transaksi;

class TransaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transaksi = Transaksi::orderBy('updated_at','desc')->with('costs')->get();
        return view('transaksi.index',['transaksi' => $transaksi]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('transaksi.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $transaksi = new Transaksi();
        $transaksi->type = $request->type_transaksi;
        $transaksi->created_at = $request->created_at;
        $transaksi->project_name = $request->project_name;
        $transaksi->project_code = $request->project_code;
        $transaksi->receiver = $request->receiver;
        $transaksi->receiver_rekening = $request->receiver_rekening;
        $transaksi->amount_total = $request->amount_total;
        $transaksi->direksi = $request->direksi;
        $transaksi->kepala_bagian = $request->kepala_bagian;
        $transaksi->kasir = $request->kasir;
        $transaksi->penerima = $request->penerima;
        $success = $transaksi->save();
        for($i=0;$i<count($request->type);$i++){
            $cost = new \App\Cost();
            $cost->type = $request->type[$i];
            $cost->code = $request->code[$i];
            $cost->rekening_code = $request->rekening_code[$i];
            $cost->amount = $request->amount[$i];
            $cost->description = $request->description[$i];
            $transaksi->costs()->save($cost);
        }
        if($success){
            \Session::flash('message','Berhasil Menambahkan Data');
        }
        return redirect('/transaksi');
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
        $transaksi = Transaksi::findOrFail($id);
        $success = $transaksi->delete();
        if($success){
            \Session::flash('message','Berhasil Menghapus Data');
        }
        return redirect('/transaksi');
    }
}
