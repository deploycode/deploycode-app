@extends('layouts.main')
@section('section')
    <div class="jumbotron">
      {!!Form::open(['route'=>'job.store','method'=>'POST'])!!}
      @include('job.form.field')
      <div class="form-group">
        {!!Form::submit('Register', ['class'=>'btn btn-success pull-right'])!!}
      </div>
      {!!Form::close()!!}
    </div>
@endsection
