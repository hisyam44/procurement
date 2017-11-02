<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Issue;
use PDF;

class IssueController extends Controller
{
    function __construct(){
        $this->middleware('redirect.operator',['except' => ['index','create','store']]);
        $this->middleware('redirect.supervisior',['except' => ['index','show']]);
    }
    public function index(){
    	$issues = Issue::orderBy('created_at','desc')->orderBy('no','asc')->paginate(10);
    	return view('issue.index',['issues' => $issues]);
    }

    public function create(){
    	$no_voucher = Issue::orderBy('id','DESC')->first();
        if(count($no_voucher) === 0){
            $no_voucher = 1;
        }else{
            $no_voucher = $no_voucher->id+1;
        }
        $no_voucher = \Carbon\Carbon::now()->year.sprintf('%04d',$no_voucher);
    	return view('issue.create',['no' => $no_voucher]);
    }

    public function store(Request $request){
    	//return response()->json($request->all());
    	$issue = new Issue();
    	$issue->no = $request->no;
    	$issue->unit_id = $request->unit_id;
        $user = \Auth::user();
        $issue->operator_id = $user->id;
    	$issue->sn = $request->sn;
    	$issue->hm = $request->hm;
    	$issue->lokasi = $request->lokasi;
    	$issue->created_at = $request->created_at;
    	$issue->diketahui = $request->diketahui;
    	$issue->diterima = $request->diterima;
    	$issue->diserahkan = $request->diserahkan;
   		$success = $issue->save();
   		for($i=0;$i<count($request->part_id);$i++){
   			$item = new \App\IssueItem();
   			$item->part_id = $request->part_id[$i];
   			$item->name = $request->name[$i];
   			$item->qty = $request->qty[$i];
   			$item->keterangan = $request->keterangan[$i];
   			$success = $issue->items()->save($item);
   		}
   		if($success){
            \Session::flash('message','Added New Data'); 
        }
        return redirect('/issue');
    }

    public function show($id, Request $request){
    	$issue = Issue::findOrFail($id);
    	$pdf = PDF::loadView('issue.details',['issue' => $issue]);
        if($request->print === "1"){
            return $pdf->setPaper('a4', 'portait')->download('StoreIssue'.sprintf('%05d',$issue->id).'.pdf');
        }
    	return view('issue.details',['issue' => $issue]);
    }

    public function edit($id){
        $issue = Issue::findOrFail($id);
        return view('issue.edit',['issue' => $issue]);
    }

    public function update(Request $request, $id){
        //return response()->json($request->all());
        $issue = Issue::findOrFail($id);
        $issue->no = $request->no;
        $issue->unit_id = $request->unit_id;
        $issue->sn = $request->sn;
        $issue->hm = $request->hm;
        $issue->lokasi = $request->lokasi;
        $issue->created_at = $request->created_at;
        $issue->diketahui = $request->diketahui;
        $issue->diterima = $request->diterima;
        $issue->diserahkan = $request->diserahkan;
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
        return redirect('/issue');
    }

    public function destroy($id){
    	$issue = Issue::findOrFail($id);
    	$success = $issue->delete();
    	if($success){
            \Session::flash('message','Data Has Been Erased'); 
        }
        return redirect('/issue');
    }

    public function approve($id){
        $purchase = Issue::findOrFail($id);
        $user = \Auth::user();
        if($user->role == "admin"){
            if($purchase->admin_id != 0){
                \Session::flash('message','Data Has Been Already Approved');
                return redirect('/issue');
            }
            $purchase->admin_id = $user->id;
        }else{
            if($purchase->hod_id != 0){
                \Session::flash('message','Data Has Been Already Approved');
                return redirect('/issue');
            }
            $purchase->hod_id = $user->id;
        }
        $success = $purchase->save();
        if($success){
            \Session::flash('message','Data Has Been Approved'); 
        }
        return redirect('/issue');
    }

}
