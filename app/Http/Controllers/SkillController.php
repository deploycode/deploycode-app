<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\Stack;
use deploycodeApp\Skill;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;

class SkillController extends Controller
{
    public function __construct(){
      $this->middleware('auth');
    }
    public function index()
    {
      $skills=Skill::all();
      return view('skill.index',['skills'=>$skills]);
    }
    public function create()
    {
      $stackslist=Stack::lists('name','id');
      return view('skill.create',['stacks'=>$stackslist]);
    }
    public function store(Request $request)
    {
      Skill::create($request->all());
      flash('ok','success');
      return redirect('skill/create');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
      $stackslist=Stack::lists('name','id');
      $skill=Skill::find($id);
      return view('skill.edit' , ['skill'=> $skill,'stacks'=>$stackslist]);
    }
    public function update(Request $request, $id)
    {
      $skill= Skill::find($id);
      $skill->fill($request->all());
      $skill->save();
      flash('skill actualizado satisfactoriamente', 'success');
      return redirect('skill');
    }
    public function destroy($id)
    {
      Skill::destroy($id);
      flash('skill eliminado satisfactoriamente', 'success');
      return redirect('skill');
    }
}
