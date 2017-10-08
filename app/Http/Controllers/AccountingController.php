<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Accounting;

class AccountingController extends Controller
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
        $acc = Accounting::orderBy('id','desc')->paginate(7);
        return view('acc.index',['accs' => $acc]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('error');
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
        $acc = new Accounting();
        $acc->name = $request->name;
        $success = $acc->save();
         if($success){
            \Session::flash('message','Added New Data'); 
        }
        return redirect('/transaksi/acc');
        return view('error');
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
        return view('error');
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
        return view('error');
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
        return view('error');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $purchase = Accounting::findOrFail($id);
        $success = $purchase->delete();
         if($success){
            \Session::flash('message','Data Has Been Erased'); 
        }
        return redirect('/transaksi/acc');
    }
}
