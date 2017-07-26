<?php

namespace deploycodeApp\Http\Controllers;

use Illuminate\Http\Request;
use deploycodeApp\Post;
use deploycodeApp\Category;
use deploycodeApp\Tag;
use deploycodeApp\Http\Requests;
use deploycodeApp\Http\Controllers\Controller;

class PostController extends Controller
{
    public function __construct(){
      $this->middleware('auth', ['only' => ['index', 'create' , 'store', 'edit', 'update', 'destroy']]);
    }
    public function index()
    {
      $posts=Post::all();
      return view('post.index',['posts'=>$posts]);
    }
    public function create()
    {
      $categories=Category::lists('name','id');
      $tags=Tag::orderBy('name','ASC')->lists('name','id');
      return view('post.create',['categories'=>$categories , 'tags'=>$tags]);
    }
    public function store(Request $request)
    {
      $post=Post::create($request->all());
      $post->tags()->sync($request->tags);
      Flash('Post created','success');
      return redirect('post');
    }
    public function show($slug)
    {
      $post=Post::where('slug','=', $slug)->firstOrFail();
      return view('post',['post'=>$post]);
    }
    public function edit($id)
    {
      $categories=Category::lists('name','id');
      $tags=Tag::orderBy('name','ASC')->lists('name','id');
      $post=Post::find($id);
      $myTags=$post->tags->lists('id')->ToArray();
      return view('post.edit' , ['post'=> $post,'categories'=>$categories , 'tags'=>$tags , 'myTags'=>$myTags]);
    }
    public function update(Request $request, $id)
    {
      $post= Post::find($id);
      $post->slug = null;
      $post->fill($request->all());
      $post->save();
      $post->tags()->sync($request->tags);
      flash('post actualizado satisfactoriamente', 'success');
      return redirect('post');
    }
    public function destroy($id)
    {
      $post= Post::find($id);
      $post->tags()->detach();
      Post::destroy($id);
      flash('post eliminado satisfactoriamente', 'success');
      return redirect('post');
    }
    public function publish($id)
    {
      $post=Post::find($id);
      $post->state='published';
      $post->save();
      flash('post publicado satisfactoriamente', 'success');
      return redirect('post');
    }
    public function unpublish($id)
    {
      $post=Post::find($id);
      $post->state='draft';
      $post->save();
      flash('post publicado satisfactoriamente', 'success');
      return redirect('post');
    }
    public function preview($slug)
    {
      $post=Post::where('slug','=', $slug)->firstOrFail();
      return view('post',['post'=>$post]);
    }
}
