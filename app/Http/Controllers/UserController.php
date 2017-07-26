<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\User;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;

class UserController extends Controller
{
    public function __construct(){
      $this->middleware('auth');
    }
    public function index()
    {
      $users=User::all();
      return view('user.index',['users'=>$users]);
    }
    public function create()
    {
      return view('user.create');
    }
    public function store(Request $request)
    {
      User::create($request->all());
      flash('Usuario creado satisfactoriamente', 'success');
      return redirect('user/create');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
      $user=User::find($id);
      return view('user.edit' , ['user'=> $user]);
    }
    public function update(Request $request, $id)
    {
      $user= User::find($id);
      $user->fill($request->all());
      $user->save();
      flash('user actualizado satisfactoriamente', 'success');
      return redirect('user');
    }
    public function destroy($id)
    {
      User::destroy($id);
      flash('user eliminado satisfactoriamente', 'success');
      return redirect('user');
    }
}
