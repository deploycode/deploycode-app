@extends('layouts.main')
@section('section')
  {!!Form::model($user,['route'=>['user.update', $user->id], 'method'=>'PUT', 'class'=>'formulario'])!!}
    @include('user.form.field')
    <div class="form-group">
      {!!Form::submit('Update', ['class'=>'btn btn-success pull-right'])!!}
    </div>
  {!!Form::close()!!}
@endsection
