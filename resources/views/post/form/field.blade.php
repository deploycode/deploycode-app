<div class="form-group">
  {!!Form::label('Category')!!}
  {!!Form::select('category_id', $categories , null, ['class'=>'form-control' , 'placeholder'=>'Please enter position'])!!}
</div>
<div class="form-group">
  {!!Form::label('Name')!!}
  <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
  {!!Form::text('name', null , ['class'=>'form-control' , 'placeholder'=>'Please enter position'])!!}
</div>
<div class="form-group">
  {!!Form::label('Content')!!}
  {!!Form::textarea('content', null , ['id'=>'txa', 'class'=>'form-control'])!!}
</div>
<div class="form-group">
  {!!Form::label('Tags')!!}
  @if (isset($myTags))
    {!!Form::select('tags[]', $tags , $myTags, ['class'=>'form-control chosen-select' , 'id'=>'slc_tags',  'data-placeholder'=>'Seleccione los tags','multiple'])!!}
  @else
    {!!Form::select('tags[]', $tags , null, ['class'=>'form-control chosen-select' , 'id'=>'slc_tags',  'data-placeholder'=>'Seleccione los tags','multiple'])!!}
  @endif
</div>
{!!Html::script('plugins/ckeditor/ckeditor.js')!!}
{!!Html::script('plugins/ckfinder/ckfinder.js')!!}
@section('scripts')
  <script>
  $('#slc_tags').chosen({

  });
  CKEDITOR.replace( 'txa',
  {
    filebrowserBrowseUrl        : '../plugins/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl   : '../plugins/ckfinder/ckfinder.html?type=Images',
    filebrowserUploadUrl        : '../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl   : '../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
  });
  </script>
@endsection
</script>
