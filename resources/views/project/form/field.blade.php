<div class="form-group">
  {!!Form::label('Name')!!}
  {!!Form::text('name', null , ['class'=>'form-control' , 'placeholder'=>'Please enter position'])!!}
</div>
<div class="form-group">
  {!!Form::label('Url')!!}
  {!!Form::text('url', null , ['class'=>'form-control' , 'placeholder'=>'Please enter url'])!!}
</div>
<div class="form-group">
  {!!Form::label('Job')!!}
  {!!Form::select('job_id', $jobs, null,['id'=>'slc_job_id','class'=>'form-control'])!!}
</div>
<div class="form-group">
  {!!Form::label('Description')!!}
  {!!Form::textarea('description', null , ['id'=>'txa', 'class'=>'form-control'])!!}
</div>
{!!Html::script('plugins/ckeditor/ckeditor.js')!!}
{!!Html::script('plugins/ckfinder/ckfinder.js')!!}
<script type="text/javascript">
  CKEDITOR.replace( 'txa',
  {
    filebrowserBrowseUrl        : '../plugins/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl   : '../plugins/ckfinder/ckfinder.html?type=Images',
    filebrowserUploadUrl        : '../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl   : '../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
  });
</script>
