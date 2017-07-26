<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\Job;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;

class JobController extends Controller
{
    public function __construct(){
      $this->middleware('auth');
    }
    public function index()
    {
      $jobs=Job::all();
      return view('job.index',['jobs'=>$jobs]);
    }
    public function create()
    {
      return view('job.create');
    }
    public function store(Request $request)
    {
      Job::create($request->all());
      flash('Job registered', 'success');
      return redirect('job/create');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
      $job=Job::find($id);
      return view('job.edit' , ['job'=> $job]);
    }
    public function update(Request $request, $id)
    {
      $job= Job::find($id);
      $job->fill($request->all());
      $job->save();
      flash('job actualizado satisfactoriamente', 'success');
      return redirect('job');
    }
    public function destroy($id)
    {
      Job::destroy($id);
      flash('job eliminado satisfactoriamente', 'success');
      return redirect('job');
    }
}
