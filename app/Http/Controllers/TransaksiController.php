<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Transaksi;  
use App\Attachment;  
use Excel;

class TransaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $transaksi = Transaksi::query();
        if($request->type != null){
            $transaksi = $transaksi->where('type',$request->type);
        }
        if($request->start_date != null){
            $transaksi = $transaksi->where('created_at','>=',$request->start_date);
        }
        if($request->end_date != null){
            $transaksi = $transaksi->where('created_at','<=',$request->end_date);
        }
        if($request->cost_code != null){
            $cost_code = $request->cost_code;
            $transaksi = $transaksi->whereHas('costs',function ($q) use($cost_code){
                $q->where('code','LIKE','%'.$cost_code.'%');
            });
        }
        if($request->rekening_code != null){
            $rekening_code = $request->rekening_code;
            $transaksi = $transaksi->whereHas('costs',function ($q) use($rekening_code){
                $q->where('rekening_code','LIKE','%'.$rekening_code.'%');
            });
        }
        if($request->cost_type != null){
            $cost_type = $request->cost_type;
            $transaksi = $transaksi->whereHas('costs',function ($q) use($cost_type){
                $q->where('type',$cost_type);
            });
        }
        if(count($request->all()) < 2){
            $transaksi = $transaksi->limit(20);
        }
        $transaksi = $transaksi->orderBy('created_at','desc')->get();
        if($request->print){
            $view = "transaksi.print";
            $data = [];
            $data['transaksi'] = $transaksi;
            //return view('transaksi.print',$data);
            $excel = Excel::create('laporan_transaksi'.\Carbon\Carbon::now(), function($excel) use($view,$data) {
                $excel->sheet('laporan', function($sheet) use($view,$data) {
                    $sheet->loadView($view,$data);
                });
            });
            return $excel->export('xls');
        }
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
        return redirect('/transaksi/'.$transaksi->id.'/attachment');
    }

    public function attachmentView($id){
        $transaksi = Transaksi::findOrFail($id);
        $attachments = $transaksi->attachments;
        return view('attachment.index',['attachments' => $attachments]);
        echo $attachments;
    }

    public function attachmentPost(Request $request,$id){
        $transaksi = Transaksi::findOrFail($id);
        foreach ($request->filename as $photo) {
            $attachment = new Attachment();
            $transaksi->attachments()->save($attachment);
            $extension = $photo->getClientOriginalExtension();
            $name = sprintf('%06d',$attachment->id).".".$extension;
            $photo->move("uploads",$name);
            $attachment->filename = '/uploads/'.$name;
            $attachment->save();
        }
        return redirect('/transaksi/'.$id.'/attachment');
    }

    public function attachmentDelete($id){
        $attachment = Attachment::findOrFail($id);
        $transaksi_id = $attachment->transaksi_id;
        $attachment->delete();
        $success = unlink(substr($attachment->filename,1));
        if($success){
            \Session::flash('message','Berhasil Menghapus Data');
        }
        return redirect('transaksi/'.$transaksi_id.'/attachment');
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
