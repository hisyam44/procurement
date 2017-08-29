<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Transaksi;  
use App\Cost;  
use App\Attachment;  
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
        return view('home');
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

    public function indexSingle(Request $request){
        //return substr($request->path(),10);
        $tipe = substr($request->path(),10);
        $transaksi = Transaksi::where('type',$tipe)->orderBy('no_voucher','desc')->get();
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

    public function indexBank(Request $request){
        $transaksi = Transaksi::where('type','bank')->orderBy('created_at','desc')->get();
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

    public function indexIou(Request $request){
        $transaksi = Transaksi::where('type','iou')->orderBy('created_at','desc')->get();
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

    public function indexIous(Request $request){
        $transaksi = Transaksi::where('type','ious')->orderBy('created_at','desc')->get();
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

    public function createCash()
    {
        $no_voucher = Transaksi::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = "CASH 1-".sprintf('%05d',$no_voucher);
        return view('transaksi.create',['no_voucher' => $no_voucher,'type' => 'cash']);
    }

    public function createBank()
    {
        $no_voucher = Transaksi::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = "BANK 2-".sprintf('%05d',$no_voucher);
        return view('transaksi.create',['no_voucher' => $no_voucher,'type' => 'bank']);
    }

    public function createIou()
    {
        $no_voucher = Transaksi::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = "IOU 3-".sprintf('%05d',$no_voucher);
        return view('transaksi.createiou',['no_voucher' => $no_voucher,'type' => 'iou']);
    }

    public function createIous()
    {
        $no_voucher = Transaksi::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = "IOU Settlement 4-".sprintf('%05d',$no_voucher);
        return view('transaksi.createious',['no_voucher' => $no_voucher,'type' => 'ious']);
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

        $transaksi->no_voucher = $request->no_voucher;
        $transaksi->type = $request->type_transaksi;
        $transaksi->created_at = $request->created_at;
        $transaksi->project_name = $request->project_name;
        $transaksi->project_code = $request->project_code;
        $transaksi->receiver = $request->receiver;
        if($request->type_transaksi === "bank"){
            $transaksi->receiver_rekening = $request->receiver_rekening;
            $transaksi->bank = $request->bank;
            $transaksi->bank_details = $request->bank_details;
        }
        if($request->type_transaksi === "ious"){
            $transaksi->amount_total = $request->amount[0];
            $transaksi->keterangan = "Realisasi ".$request->no_iou;
        }else{
            $transaksi->amount_total = $request->amount_total;
            $transaksi->keterangan = $request->keterangan;
        }
        $transaksi->direksi = $request->direksi;
        $transaksi->kepala_bagian = $request->kepala_bagian;
        $transaksi->kasir = $request->kasir;
        $transaksi->penerima = $request->penerima;
        $success = $transaksi->save();
        $selisih = 0;
        for($i=0;$i<count($request->amount);$i++){
            /*$latest_saldo = Cost::orderBy('id','DESC')->first();
            if(count($latest_saldo) === 0){
                $latest_saldo = 0;
            }else{
                $latest_saldo = $latest_saldo->saldo;
            }*/
            $cost = new Cost();
            if($request->type_transaksi === "iou" || $request->type_transaksi === "ious"){
                $cost->type = "debet";
                $cost->code = "";
                $cost->cost_type = "OH";
            }else{
                $cost->type = $request->type[$i];
                $cost->code = $request->code[$i];
                $cost->cost_type = $request->cost_type[$i];
            }
            $cost->amount = $request->amount[$i];
            if($request->type_transaksi === "ious"){
                $selisih = $request->amount_total-$request->amount[$i];
                $cost->description = "Selisih Realiasasi Settlement : Rp.".$selisih;
            }else{
                $cost->description = $request->description[$i];
            }
            /*if($request->type[$i] === "Debet"){
                $cost->saldo = $latest_saldo+$request->amount[$i];
            }else{
                $cost->saldo = $latest_saldo-$request->amount[$i];
            }*/
            $transaksi->costs()->save($cost);
        }
        if($success){
            \Session::flash('message','Berhasil Menambahkan Data');
        }
        if($selisih != 0){
            if($selisih > 0){
                \Session::flash('message','Jumlah Realisasi Settlement Kurang dari Jumlah IOU, Tambahkan Transaksi dengan Tipe "Debet".');
            }else{
                \Session::flash('message','Jumlah Realisasi Settlement Lebih dari Jumlah IOU, Tambahkan Transaksi dengan Tipe "Credit".');
            }
            return redirect('/transaksi/cash/create');
        }
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

    public function pettyCash(){
        return view('transaksi.petty');
    }

    public function iouCompletion(Request $request){
        $locations = Transaksi::where('type','iou')->where('no_voucher','LIKE','%'.$request->term.'%')->get();
        $results = [];
        foreach($locations as $location){
            $value = array(
                'value' => $location->no_voucher,
                'acc_id' => $location->accounting->id,
                'acc_val' => $location->accounting->name,
                'created_at' => date($location->created_at),
                'receiver' => $location->receiver,
                'amount_total' => $location->amount_total,
                'keterangan' => $location->keterangan,
                'direksi' => $location->direksi,
                'kepala_bagian' => $location->kepala_bagian,
                'kasir' => $location->kasir,
                'penerima' => $location->penerima,
            );
            $results[] = $value;
        }
        return response()->json($results,200);
    }

}
