<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Petty;
use Excel;

class PettyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $petties = Petty::orderBy('created_at','desc')->paginate(15);
        return view('petty.index',['petties' => $petties]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('petty.create');
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
        $petty = new Petty();
        $petty->t100rb = $request->t100rb;
        $petty->t50rb = $request->t50rb;
        $petty->t20rb = $request->t20rb;
        $petty->t10rb = $request->t10rb;
        $petty->t5rb = $request->t5rb;
        $petty->t2rb = $request->t2rb;
        $petty->t1rb = $request->t1rb;
        $petty->t500r = $request->t500r;
        $petty->t200r = $request->t200r;
        $petty->t100r = $request->t100r;
        $petty->total = $request->total;
        $petty->created_at = $request->created_at;
        $petty->admin = $request->admin;
        $petty->approval_1 = $request->approval_1;
        $petty->approval_2 = $request->approval_2;
        $success = $petty->save();
        if($success){
            \Session::flash('message','Added New Data');
        }
        return redirect('/transaksi/petty');
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
        $petty = Petty::findOrFail($id);
        $success = $petty->delete();
        if($success){
            \Session::flash('message','Data Has Been Erased');
        }
        return redirect('transaksi/petty');
    }

    public function printFromDate(Request $request){
        $petties = Petty::where('created_at','<=',$request->to)->where('created_at','>',$request->from)->get();
        //return view('petty.print',['petties' => $petties]);

        $excel = Excel::create('PettyCashReport'.\Carbon\Carbon::now(), function($excel) use($petties) {
            $excel->sheet('report', function($sheet) use($petties) {
                $sheet->loadView('petty.print',['petties' => $petties]);
            });
        });
        return $excel->export('xls');
    }
}
