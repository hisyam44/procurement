<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Returns;
use PDF;

class ReturnController extends Controller
{
    function __construct(){
        $this->middleware('redirect.operator',['except' => ['index','create','store']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $issues = Returns::orderBy('created_at','desc')->orderBy('no','asc')->paginate(10);
        return view('return.index',['returns' => $issues]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $no_voucher = Returns::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = \Carbon\Carbon::now()->year.sprintf('%04d',$no_voucher);
        return view('return.create',['no' => $no_voucher]);
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
        $issue = new Returns();
        $issue->no = $request->no;
        $issue->unit_id = $request->unit_id;
        $issue->sn = $request->sn;
        $issue->hm = $request->hm;
        $issue->lokasi = $request->lokasi;
        $issue->created_at = $request->created_at;
        $issue->diketahui = $request->diketahui;
        $issue->diterima = $request->diterima;
        $issue->dikembalikan = $request->dikembalikan;
        $success = $issue->save();
        for($i=0;$i<count($request->part_id);$i++){
            $item = new \App\ReturnItem();
            $item->part_id = $request->part_id[$i];
            $item->name = $request->name[$i];
            $item->qty = $request->qty[$i];
            $item->keterangan = $request->keterangan[$i];
            $success = $issue->items()->save($item);
        }
        if($success){
            \Session::flash('message','Added New Data'); 
        }
        return redirect('/return');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        $issue = Returns::findOrFail($id);
        $pdf = PDF::loadView('return.details',['issue' => $issue]);
        if($request->print === "1"){
            return $pdf->setPaper('a4', 'portait')->download('StoreReturn'.sprintf('%05d',$issue->id).'.pdf');
        }
        return view('return.details',['issue' => $issue]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $issue = Returns::findOrFail($id);
        return view('return.edit',['return' => $issue]);
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
        $issue = Returns::findOrFail($id);
        $issue->no = $request->no;
        $issue->unit_id = $request->unit_id;
        $issue->sn = $request->sn;
        $issue->hm = $request->hm;
        $issue->lokasi = $request->lokasi;
        $issue->created_at = $request->created_at;
        $issue->diketahui = $request->diketahui;
        $issue->diterima = $request->diterima;
        $issue->dikembalikan = $request->dikembalikan;
        $success = $issue->save();
        foreach($issue->items as $i => $item){
            $item->part_id = $request->part_id[$i];
            $item->name = $request->name[$i];
            $item->qty = $request->qty[$i];
            $item->keterangan = $request->keterangan[$i];
            $success = $item->save();
        }
        if($success){
            \Session::flash('message','Data Has Been Changed'); 
        }
        return redirect('/return');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $issue = Returns::findOrFail($id);
        $success = $issue->delete();
        if($success){
            \Session::flash('message','Data Has Been Erased'); 
        }
        return redirect('/return');
    }
}
