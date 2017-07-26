@extends('layouts.main')
@section('section')
<table class="table">
  <thead>
    <th>Company</th>
    <th>Acciones</th>
  </thead>
  @foreach ($projects as $project)
    <tbody>
      <td>{{$project->name}}</td>
      <td>
        {!!Form::open(['route'=>['project.destroy',$project->id], 'method'=>'DELETE'])!!}
          <div class="form-group">
            <a href="{{ route('project.edit', $project->id) }}"><i class="btn btn-primary glyphicon glyphicon-pencil"></i></a>
            {!! Form::button('<span class="glyphicon glyphicon-trash"></span>', ['type' => 'submit', 'class'=>'btn btn-danger']) !!}
          </div>
        {!!Form::close()!!}
      </td>
    </tbody>
  @endforeach
</table>
@endsection
