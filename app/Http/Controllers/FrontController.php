<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\Project;
use deploycodeApp\Job;
use deploycodeApp\Stack;
use deploycodeApp\Skill;
use deploycodeApp\Post;
use deploycodeApp\Category;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;
use Carbon\Carbon;
class FrontController extends Controller
{
  public function __construct(){
    Carbon::setLocale('es');
  }
    public function index()
    {
      return view('index');
    }

    public function profile()
    {
      $projects=Project::orderBy('start')->get();
      $jobs=Job::all();
      $stacks=Stack::all();
      $skills=Skill::all();
      return view('profile', ['projects'=>$projects , 'jobs'=>$jobs , 'stacks'=>$stacks , 'skills'=>$skills]);
    }

    public function blog()
    {
      $posts=Post::where('state','=', 'published')->get();
      $categories=Category::all();
      return view('blog',['posts'=> $posts , 'categories'=>$categories]);
    }

    public function show()
    {
      return view('blog');
    }

    public function contact()
    {
      return view('contact');
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
