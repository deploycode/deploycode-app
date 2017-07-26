@extends('layouts.main')
@section('section')
  {!!Form::model($post,['route'=>['post.update', $post->id], 'method'=>'PUT', 'class'=>'formulario'])!!}
    @include('post.form.field')
    <div class="form-group">
      {!!Form::submit('Update', ['class'=>'btn btn-success pull-right'])!!}
    </div>
  {!!Form::close()!!}
@endsection
