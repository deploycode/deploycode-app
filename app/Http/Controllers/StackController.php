<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\Stack;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;

class StackController extends Controller
{
    public function __construct(){
      $this->middleware('auth');
    }
    public function index()
    {
      $stacks=Stack::all();
      return view('stack.index',['stacks'=>$stacks]);
    }
    public function create()
    {
      return view('stack.create');
    }
    public function store(Request $request)
    {
      Stack::create($request->all());
      flash('ok', 'success');
      return redirect('stack/create');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
      $stack=Stack::find($id);
      return view('stack.edit' , ['stack'=> $stack]);
    }
    public function update(Request $request, $id)
    {
      $stack= Stack::find($id);
      $stack->fill($request->all());
      $stack->save();
      flash('stack actualizado satisfactoriamente', 'success');
      return redirect('stack');
    }
    public function destroy($id)
    {
      Stack::destroy($id);
      flash('stack eliminado satisfactoriamente', 'success');
      return redirect('stack');
    }
}
