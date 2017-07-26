<div class="form-group">
  {!!Form::label('Stack')!!}
  {!!Form::select('stack_id', $stacks, null,['id'=>'slc_job_id','class'=>'form-control'])!!}
</div>
<div class="form-group">
  {!!Form::label('Name')!!}
  {!!Form::text('name', null , ['class'=>'form-control' , 'placeholder'=>'Please enter position'])!!}
</div>
<div class="form-group">
  {!!Form::label('Value')!!}
  {!!Form::text('value', null , ['class'=>'form-control' , 'placeholder'=>'Please enter position'])!!}
</div>
