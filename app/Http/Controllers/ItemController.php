<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Item;

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = Item::orderBy('item_no','ASC')->get();
        return view('item.index',['items' => $items]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('item.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $dimen = $data['dimension'];
        $data['dimension'] = $dimen[0].' x '.$dimen[1];
        $count = Item::where('item_no','LIKE',$data['item_no'].'%')->count();
        $data['item_no'] .= str_pad($count+1, 4, "0", STR_PAD_LEFT);
        //return response()->json($data);
        $item = new Item();
        $item->item_no = $data['item_no'];
        $item->description = $data['description'];
        $item->uom = $data['uom'];
        $item->weight = $data['weight'];
        $item->dimension = $data['dimension'];
        $item->shelf_life = $data['shelf_life'];
        $item->warranty = $data['warranty'];
        $item->remark = $data['remark'];
        $success = $item->save();
        if($success){
            foreach($data['part_no'] as $part_no){
                $part = new \App\PartNo;
                $part->code = $part_no;
                $item->part_no()->save($part);
            }
            \Session::flash('message','Berhasil Menambahkan Data'); 
        }
        return redirect('/item');
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
        $item = Item::findOrFail($id);
        $success = $item->delete();
        if($success){
            \Session::flash('message','Berhasil Menghapus Data'); 
        }
        return redirect('/item');
    }
}
