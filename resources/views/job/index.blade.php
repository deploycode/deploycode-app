@extends('layouts.main')
@section('section')
<table class="table">
  <thead>
    <th>Company</th>
    <th>Acciones</th>
  </thead>
  @foreach ($jobs as $job)
    <tbody>
      <td>{{$job->company}}</td>
      <td>
        {!!Form::open(['route'=>['job.destroy',$job->id], 'method'=>'DELETE'])!!}
          <div class="form-group">
            <a href="{{ route('job.edit', $job->id) }}"><i class="btn btn-primary glyphicon glyphicon-pencil"></i></a>
            {!! Form::button('<span class="glyphicon glyphicon-trash"></span>', ['type' => 'submit', 'class'=>'btn btn-danger']) !!}
          </div>
        {!!Form::close()!!}
      </td>
    </tbody>
  @endforeach
</table>
@endsection
