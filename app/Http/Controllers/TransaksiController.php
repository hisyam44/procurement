<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Transaksi;  
use App\Cost;  
use App\Attachment;  
use App\ConstructDescript;  
use Excel;
use PDF;

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
        /*if($request->rekening_code != null){
            $rekening_code = $request->rekening_code;
            $transaksi = $transaksi->whereHas('costs',function ($q) use($rekening_code){
                $q->where('rekening_code','LIKE','%'.$rekening_code.'%');
            });
        }*/
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
        $no_voucher = Transaksi::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        return view('transaksi.create',['no_voucher' => $no_voucher]);
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
        $transaksi = new Transaksi();
        $transaksi->accounting_id = $request->category_accounting;
        $transaksi->construction_id = $request->construction_id;
        $transaksi->type = $request->type_transaksi;
        $transaksi->created_at = $request->created_at;
        $transaksi->project_name = $request->project_name;
        $transaksi->project_code = $request->project_code;
        $transaksi->receiver = $request->receiver;
        $transaksi->receiver_rekening = $request->receiver_rekening;
        $transaksi->amount_total = $request->amount_total;
        $transaksi->keterangan = $request->keterangan;
        $transaksi->direksi = $request->direksi;
        $transaksi->kepala_bagian = $request->kepala_bagian;
        $transaksi->kasir = $request->kasir;
        $transaksi->penerima = $request->penerima;
        $success = $transaksi->save();
        for($i=0;$i<count($request->type);$i++){
            $latest_saldo = Cost::orderBy('id','DESC')->first();
            if(count($latest_saldo) === 0){
                $latest_saldo = 0;
            }else{
                $latest_saldo = $latest_saldo->saldo;
            }
            $cost = new Cost();
            $cost->costcode_id = $request->code_id[$i];
            $cost->costcode_lv4_id = $request->costcode_lv4_id[$i];
            $construction_description = ConstructDescript::find($request->description_id);
            //return $request;
            if(count($construction_description) === 0){
                $new_description = new ConstructDescript();
                $new_description->construction_id = $request->construction_id;
                $new_description->name = $request->description[$i];
                $new_description->save();
                $cost->construction_description_id = $new_description->id;
            }else{
                $cost->construction_description_id = $request->description_id[$i];
            }
            $cost->type = $request->type[$i];
            $cost->cost_type = $request->cost_type[$i];
            $cost->amount = $request->amount[$i];
            if($request->type[$i] === "Debet"){
                $cost->saldo = $latest_saldo+$request->amount[$i];
            }else{
                $cost->saldo = $latest_saldo-$request->amount[$i];
            }
            $transaksi->costs()->save($cost);
        }
        if($success){
            \Session::flash('message','Berhasil Menambahkan Data');
        }
        //return response()->json($request->all());
        return redirect('/transaksi/'.$transaksi->id.'/attachment');
    }

    public function attachmentView(Request $request,$id){
        $transaksi = Transaksi::findOrFail($id);
        $attachments = $transaksi->attachments;
        if($request->print){
            $data = [];
            foreach($attachments as $attachment){
                $image = [];
                $arrContextOptions = array("ssl"=>array("verify_peer"=>false,"verify_peer_name"=>false,),);
                $type = pathinfo(substr($attachment->filename,1),PATHINFO_EXTENSION);
                $imageData = file_get_contents(substr($attachment->filename, 1),false,stream_context_create($arrContextOptions));
                $imageBase64Data = base64_encode($imageData);
                $imageData = 'data:image/'.$type.';base64,'.$imageBase64Data;
                $image['filename'] =$imageData;
                $data[] = $image;
                   
            }
            $pdf = PDF::loadView('attachment.print',['attachments' => $data]);
            //return view('attachment.print',['attachments' => $data]);
            return $pdf->setPaper('a4', 'landscape')->download('Attachments'.sprintf('%05d',$id).'.pdf');
        }
        return view('attachment.index',['attachments' => $attachments]);
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

    public function itemCompletion(Request $request){
        $locations = Item::where('part_no','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->part_no,
                'uom' => $location->uom
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function accountingCompletion(Request $request){
        $locations = \App\Accounting::where('name','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->name,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function constructionCompletion(Request $request){
        $locations = \App\Construction::where('name','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->name,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function constructdescCompletion(Request $request){
        $locations = \App\ConstructDescript::where('construction_id',$request->construction_id)->where('name','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->name,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

    public function costcodeCompletion(Request $request){
        $locations = \App\Costcode::where('kode','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'id' => $location->id,
                'value' => $location->kode." - ".$location->name,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

}
