<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Item;
use Excel;

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
        $data['dimension'] = $dimen[0].' x '.$dimen[1].' x '.$dimen[2].' '.$dimen[3];
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
        $item->component = $data['component'];
        $success = $item->save();
        if($success){
            foreach($data['part_no'] as $part_no){
                $part = new \App\PartNo;
                $part->code = $part_no;
                $item->part_no()->save($part);
            }
            \Session::flash('message','Data Has Been Added'); 
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
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Item::findOrFail($id);
        return view('item.edit',['item' => $item]);
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
        $item = Item::findOrFail($id);
        $data = $request->all();
        $item->item_no = $data['item_no'];
        $item->description = $data['description'];
        $item->uom = $data['uom'];
        $item->weight = $data['weight'];
        $item->dimension = $data['dimension'];
        $item->shelf_life = $data['shelf_life'];
        $item->warranty = $data['warranty'];
        $item->remark = $data['remark'];
        $item->component = $data['component'];
        $success = $item->save();
        if($success){
            foreach($item->part_no as $index => $part){
                $part->code = $data['part_no'][$index];
                $part->save();
            }
            \Session::flash('message','Data Has Been Changed'); 
        }
        //return response()->json($data);
        return redirect('/item');
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
            \Session::flash('message','Data Has Been Erased'); 
        }
        return redirect('/item');
    }

    public function importExcel(Request $request){
        if($request->hasFile('import_file')){
            $file = $request->file('import_file')->getRealPath();
            $excel = Excel::load($file, function($reader){

            })->get();
            $count = 0;
            if(count($excel) > 0){
                foreach ($excel as $key => $value) {
                    $data = $value->toArray();

                    $item = new Item();
                    $item->item_no = $data['item_no'];
                    $item->description = $data['description'];
                    $item->uom = $data['uom'];
                    $item->weight = $data['weight'];
                    $item->dimension = $data['dimension'];
                    $item->shelf_life = $data['shelf_life'];
                    $item->warranty = $data['warranty'];
                    $item->remark = $data['remark'];
                    $item->component = $data['component'];
                    $success = $item->save();

                    //$item_part = $value->toArray();
                    $part_no = [];
                    if(strpos($data['part_no'],';')){
                        $part_no = explode(';',$data['part_no']);
                    }else{
                        $part_no[0] = $data['part_no'];
                    }
                        
                    if($success){
                        foreach($part_no as $partno){
                            $part = new \App\PartNo;
                            $part->code = $partno;
                            $item->part_no()->save($part);
                        }
                        $count++;
                    }

                    print_r($part_no);
                }
                \Session::flash('message','Successfully Added '.$count.' Data');
            }
        }
        return redirect('/item');
    }

}
