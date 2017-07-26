@extends('layouts.main')
@section('section')
  {!!Form::model($job,['route'=>['job.update', $job->id], 'method'=>'PUT', 'class'=>'formulario'])!!}
    @include('job.form.field')
    <div class="form-group">
      {!!Form::submit('Update', ['class'=>'btn btn-success pull-right'])!!}
    </div>
  {!!Form::close()!!}
@endsection
