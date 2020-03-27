@extends('layouts.main')
@section('section')
  <div class="row"><h1 id="title" class="text-center teme-contact">Contacto</h1></div>
  <article id="post">
      <div class="form-group">
        <hr>
        <p>
          Bogotá - Colombia <br>
          gabriel@deploycode.co
        </p>
        <hr>
      </div>
      <div class="btn-group btn-group-justified form-group" role="group" aria-label="...">
        <div class="btn-group" role="group">
          <a href="https://twitter.com/deploycode" target="_blank" class="btn btn-info"><i class="fa fa-twitter" aria-hidden="true"></i></a></div>
        <div class="btn-group" role="group">
          <a href="https://www.facebook.com/deploycode" target="_blank" class="btn btn-primary"> <i class="fa fa-facebook" aria-hidden="true"></i></a>
        </div>
        <div class="btn-group" role="group">
          <a href="https://www.youtube.com/channel/UClpyLIU9DZ5XE8xSlKGlr4A" target="_blank" class="btn btn-danger"> <i class="fa fa-youtube-play" aria-hidden="true"></i></a>
        </div>
        <div class="btn-group" role="group">
          <a href="https://github.com/deploycode" target="_blank" class="btn btn-default"> <i class="fa fa-github-square" aria-hidden="true"></i></a>
        </div>
        <div class="btn-group" role="group">
          <a href="https://co.linkedin.com/in/deploycode" target="_blank" class="btn btn-primary"> <i class="fa fa-linkedin" aria-hidden="true"></i></a>
        </div>
      </div>

{{--    {!!Form::open(['route'=>'mail.store', 'method'=>'POST' , 'role'=>'form'])!!}
      <div class="form-group">
        {!!Form::email('email', null,['placeholder'=>'Email', 'class'=>'form-control'])!!}
      </div>
      <div class="form-group">
        {!!Form::textarea('message',null, array('placeholder'=>'Mensaje','class'=>'form-control'));!!}
      </div>
      <div class="form-group">
        {!!Form::button('<span class="glyphicon glyphicon-send"></span>' ,['type'=>'submit','class'=>'btn btn-success']);!!}
      </div>
    {!!Form::close()!!}--}}
  </article>
@endsection
