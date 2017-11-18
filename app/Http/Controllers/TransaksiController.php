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
    function __construct(){
        $this->middleware('redirect.operator',['only' => ['destroy']]);
        $this->middleware('redirect.supervisior',['except' => ['indexSingle','dailyCash','attachmentView']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        return view('home');
    }

    public function indexSingle(Request $request){
        //return substr($request->path(),10);
        $tipe = substr($request->path(),10);
        if($request->print){
            $transaksi = Transaksi::where('type',$tipe)->orderBy('no_voucher','asc')->where('created_at','>',$request->from)->where('created_at','<=',$request->to)->get();
            $user = \Auth::user();
            if($user->role == "operator"){
                return redirect('403');
            }
            $view = "transaksi.print";
            $data = [];
            $data['transaksi'] = $transaksi;
            $latest_saldo = Transaksi::where('type',$tipe)->where('id','<',$transaksi[0]->id)->orderBy('id','desc')->first();
            $data['latest_saldo'] = isset($latest_saldo->saldo)?$latest_saldo->saldo:'0';
            if ($tipe === "iou" || $tipe === "ious") {
                $data['latest_saldo'] = 0;
            }
            return view('transaksi.print',$data);
            $excel = Excel::create('laporan_transaksi'.\Carbon\Carbon::now(), function($excel) use($view,$data) {
                $excel->sheet('laporan', function($sheet) use($view,$data) {
                    $sheet->loadView($view,$data);
                });
            });
            return $excel->export('xls');
        }
        $transaksi = Transaksi::where('type',$tipe)->orderBy('no_voucher','desc')->paginate(15);
        return view('transaksi.index',['transaksi' => $transaksi]);
    }

    public function dailyCash(Request $request)
    {
        $transaksi = Transaksi::where('type','cash')->orderBy('no_voucher','asc')->where('created_at',$request->date)->get();
        if(count($transaksi) === 0){
            return response()->json('Belum ada Transaksi Kas Pada Tanggal ini.');
        }
        $petties = \App\Petty::where('created_at',$request->date)->get();
        $daily_iou = Transaksi::where('type','iou')->orderBy('no_voucher','asc')->where('created_at',$request->date)->sum('amount_total');
        $daily_ious = Transaksi::where('type','ious')->orderBy('no_voucher','asc')->where('created_at',$request->date)->sum('amount_total');
        $user = \Auth::user();
        if($user->role == "operator"){
            return redirect('403');
        }
        $view = "transaksi.daily";
        $data = [];
        $data['transaksi'] = $transaksi;
        $data['petties'] = $petties;
        $data['daily_iou'] = $daily_iou;
        $data['daily_ious'] = $daily_ious;
        $latest_saldo = Transaksi::where('type','cash')->where('id','<',$transaksi[0]->id)->orderBy('id','desc')->first();
        $data['latest_saldo'] = isset($latest_saldo->saldo)?$latest_saldo->saldo:'0';
        //return view('transaksi.daily',$data);
        $excel = Excel::create('laporan_transaksi'.\Carbon\Carbon::now(), function($excel) use($view,$data) {
            $excel->sheet('laporan', function($sheet) use($view,$data) {
                $sheet->loadView($view,$data);
            });
        });
        return $excel->export('xls');
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
        $latest_saldo = Transaksi::where('type',$request->type_transaksi)->orderBy('id','DESC')->first();

        if(count($latest_saldo) === 0){
            $latest_saldo = 0;
        }else{
            $latest_saldo = $latest_saldo->saldo;
        }
        if($request->tipe_cost === "Debet"){
            $transaksi->saldo = $latest_saldo+$request->amount_total;
        }else{
            if($request->type_transaksi === "iou"){
                $transaksi->saldo = $latest_saldo+$request->amount_total;
            }else{
                $transaksi->saldo = $latest_saldo-$request->amount_total;
            }
        }

        if($request->type_transaksi === "bank"){
            $transaksi->receiver_rekening = $request->receiver_rekening;
            $transaksi->bank = $request->bank;
            $transaksi->bank_details = $request->bank_details;
        }
        if($request->type_transaksi === "ious"){
            $transaksi->keterangan = "Realisasi ".$request->no_iou." - Rp. ".$request->amount[0];
        }else{
            $transaksi->keterangan = $request->keterangan;
        }
        
        $transaksi->accounting_id = $request->category_accounting;
        $transaksi->no_voucher = $request->no_voucher;
        $transaksi->type = $request->type_transaksi;
        $transaksi->created_at = $request->created_at;
        $transaksi->project_name = $request->project_name;
        $transaksi->project_code = $request->project_code;
        $transaksi->receiver = $request->receiver;
        $transaksi->amount_total = $request->amount_total;
        $transaksi->direksi = $request->direksi;
        $transaksi->kepala_bagian = $request->kepala_bagian;
        $transaksi->kasir = $request->kasir;
        $transaksi->penerima = $request->penerima;
        $success = $transaksi->save();
        $selisih = 0;
        for($i=0;$i<count($request->amount);$i++){
            $cost = new Cost();

            if($request->type_transaksi === "iou" || $request->type_transaksi === "ious"){
                $cost->cost_type = "OH";
            }else{
                $cost->cost_type = $request->cost_type[$i];
            }
            if($request->type_transaksi === "ious"){
                $cost->amount = $request->amount_total;
                $selisih = $request->amount[$i]-$request->amount_total;
                $cost->description = "Selisih Pengembalian = Rp.".$selisih;
            }else{
                $cost->amount = $request->amount[$i];
                $cost->description = $request->description[$i];
            }

            $cost->code = "";
            $cost->type = $request->tipe_cost;
            

            $transaksi->costs()->save($cost);
        }
        if($success){
            \Session::flash('message','Added New Data');
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
        $attachments->type = $transaksi->type;
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
            \Session::flash('message','Data Has Been Erased');
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
            \Session::flash('message','Data Has Been Erased');
        }
        return redirect('/transaksi');
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
