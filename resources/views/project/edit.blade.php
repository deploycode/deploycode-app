@extends('layouts.main')
@section('section')
  {!!Form::model($project,['route'=>['project.update', $project->id], 'method'=>'PUT', 'class'=>'formulario'])!!}
    @include('project.form.field')
    <div class="form-group">
      {!!Form::submit('Update', ['class'=>'btn btn-success pull-right'])!!}
    </div>
  {!!Form::close()!!}
@endsection
