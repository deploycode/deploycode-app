@extends('layouts.main')
@section('section')
  <table class="table table-striped bg-info">
    <thead>
      <th>Name</th>
      <th>Acciones</th>
    </thead>
    <tbody>
    @foreach ($skills as $skill)
        <tr>
          <td>{{$skill->name}}</td>
          <td>
            {!!Form::open(['route'=>['skill.destroy',$skill->id], 'method'=>'DELETE'])!!}
            <div class="form-group">
              <a href="{{ route('skill.edit', $skill->id) }}"><i class="btn btn-primary glyphicon glyphicon-pencil"></i></a>
              {!! Form::button('<span class="glyphicon glyphicon-trash"></span>', ['type' => 'submit', 'class'=>'btn btn-danger']) !!}
            </div>
            {!!Form::close()!!}
          </td>
        </tr>
    @endforeach
    </tbody>
  </table>
@endsection
