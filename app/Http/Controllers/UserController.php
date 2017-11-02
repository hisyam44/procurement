<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::where('role','!=','dev')->paginate(10);
        return view('user.index',['users' => $users]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->role = $request->role;
        if($request->role == "Admin" || $request->role == "Direksi"){
            $user->department = "None";
        }else{
            $user->department = $request->department;
        }
        $user->password = bcrypt($request->password);
        $success = $user->save();
        if($success){
             \Session::flash('message','Added New Data'); 
        }
        return redirect('/user');
        return response()->json($request->all());
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
        $purchase = User::findOrFail($id);
        $success = $purchase->delete();
         if($success){
            \Session::flash('message','Data Has Been Erased'); 
        }
        return redirect('/user');
    }

    public function changePassword(){
        return view('user.password');
    }

    public function newPassword(Request $request){
        $user = \Auth::user();
        $password_same = \Hash::check($request->password,$user->password);
        if(!$password_same){
            return redirect('user/password');
        }
        if($request->new_password != $request->confirm_password){
            return redirect('user/password');
        }
        $user->password = bcrypt($request->new_password);
        $success = $user->save();
        if($success){
            \Session::flash('message','Password Has Been Changed'); 
        }
        return redirect('/user/password');
        return response()->json($request->all());
    }

}
