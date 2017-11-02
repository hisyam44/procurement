<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Itemcode;

class ItemcodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $itemcodes = Itemcode::orderBy('id','asc')->get();
        return view('item.code',['itemcodes' => $itemcodes]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $success = false;
        if($request->code_type === "1"){
            $code = new \App\Itemcode2;
            $code->itemcode_id = $request->code_id;
            $code->name = $request->name;
            $success = $code->save();
        }
        if($request->code_type === "2"){
            $code = new \App\Itemcode3;
            $code->itemcode2_id = $request->code_id;
            $code->name = $request->name;
            $success = $code->save();
        }
        if($success){
            \Session::flash('message','Added New Data');
        }
        return redirect('/itemcode');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $itemcodes = Itemcode::orderBy('id','asc')->get();
        $data = [];
        foreach($itemcodes as $item){
            $data[$item->name] = [];
            foreach($item->itemcode2 as $item2){
                $data[$item->name][$item2->name] = [];
                foreach($item2->itemcode3 as $item3){
                    $data[$item->name][$item2->name][] = $item3->name;
                }
            }
        }
        return response()->json($data);
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
        //
    }
}
