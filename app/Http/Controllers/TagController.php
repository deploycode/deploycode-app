<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\Tag;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;

class TagController extends Controller
{
  public function __construct(){
    $this->middleware('auth');
  }
    public function index()
    {
      $tags=Tag::all();
      return view('tag.index',['tags'=>$tags]);
    }
    public function create()
    {
      return view('tag.create');
    }
    public function store(Request $request)
    {
      Tag::create($request->all());
      flash('Tag created', 'success');
      return redirect('tag/create');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
      $tag=Tag::find($id);
      return view('tag.edit' , ['tag'=> $tag]);
    }
    public function update(Request $request, $id)
    {
      $tag= Tag::find($id);
      $tag->fill($request->all());
      $tag->save();
      flash('tag actualizado satisfactoriamente', 'success');
      return redirect('tag');
    }
    public function destroy($id)
    {
      Tag::destroy($id);
      flash('tag eliminado satisfactoriamente', 'success');
      return redirect('tag');
    }
}
