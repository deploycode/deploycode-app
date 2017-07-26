@extends('layouts.main')
@section('section')
  {!!Form::model($skill,['route'=>['skill.update', $skill->id], 'method'=>'PUT', 'class'=>'formulario'])!!}
    @include('skill.form.field')
    <div class="form-group">
      {!!Form::submit('Update', ['class'=>'btn btn-success pull-right'])!!}
    </div>
  {!!Form::close()!!}
@endsection
