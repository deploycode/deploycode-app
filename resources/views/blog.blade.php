@extends('layouts.main')
@section('section')
  <div class="row"><h1 id="title" class="text-center teme-blog">Bienvenido</h1></div>
  <div class="row blog-row">
    @foreach ($posts as $miPost)
      <div class="thumbnail col-xs-12 col-sm-4 col-md-3 col-lg-2">
        <a href="{{URL::to($miPost->category->slug, $miPost->slug) }}">
          <img src="{{asset('imgs/'.$miPost->category->icon)}}" alt="" class="img img-responsive">
          <div class="caption">
             {{$miPost->name}}
            <hr>
            <span class="label label-success">{{$miPost->category->name}}</span>
          </div>
        </a>
      </div>
    @endforeach
  </div>
@endsection
