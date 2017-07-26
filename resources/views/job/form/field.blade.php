<div class="form-group">
  {!!Form::label('Position')!!}
  {!!Form::text('position', null , ['class'=>'form-control' , 'placeholder'=>'Please enter position'])!!}
</div>
<div class="form-group">
  {!!Form::label('Company')!!}
  {!!Form::text('company', null , ['class'=>'form-control' , 'placeholder'=>'Please enter name of company'])!!}
</div>
<div class="form-group">
  {!!Form::label('Description')!!}
  {!!Form::textarea('description', null , ['id'=>'txa', 'class'=>'form-control'])!!}
</div>
<div class="form-group">
  {!!Form::label('Date start')!!}
  {!! Form::date('start', \Carbon\Carbon::now(),['class'=>'form-control'])!!}
</div>
<div class="form-group">
  {!!Form::label('Date finish')!!}
  {!! Form::date('finish', \Carbon\Carbon::now(),['class'=>'form-control'])!!}
</div>
<div class="form-group">
  {!!Form::radio('finish', '0000-00-00 00:00:00', false);!!}
</div>
