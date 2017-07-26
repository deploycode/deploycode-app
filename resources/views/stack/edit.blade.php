@extends('layouts.main')
@section('section')
  {!!Form::model($stack,['route'=>['stack.update', $stack->id], 'method'=>'PUT', 'class'=>'formulario'])!!}
    @include('stack.form.field')
    <div class="form-group">
      {!!Form::submit('Update', ['class'=>'btn btn-success pull-right'])!!}
    </div>
  {!!Form::close()!!}
@endsection
