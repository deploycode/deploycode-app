<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\Project;
use deploycodeApp\Job;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;

class ProjectController extends Controller
{
    public function __construct(){
      $this->middleware('auth');
    }
    public function index()
    {
      $projects=Project::all();
      return view('project.index',['projects'=>$projects]);
    }
    public function create()
    {
      $jobslist=Job::lists('company','id');
      return view('project.create', ['jobs'=>$jobslist]);
    }
    public function store(Request $request)
    {
      Project::create($request->all());
      flash('ok','success');
      return redirect('project/create');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
      $project=Project::find($id);
      $jobslist=Job::lists('company','id');
      return view('project.edit', ['project'=>$project , 'jobs'=>$jobslist]);
    }
    public function update(Request $request, $id)
    {
      $project= Project::find($id);
      $project->fill($request->all());
      $project->save();
      flash('project actualizado satisfactoriamente', 'success');
      return redirect('project');
    }
    public function destroy($id)
    {
      $project= Project::find($id);
      Project::destroy($id);
      flash('Proyecto eliminado satisfactoriamente', 'success');
      return redirect('project');
    }
}
