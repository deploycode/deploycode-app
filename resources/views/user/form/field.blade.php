<div class="form-group">
  {!!Form::label('Nombre de Usuario')!!}
  {!!Form::text('name', null , ['class'=>'form-control' , 'placeholder'=>'Favor ingrese un nombre de usuario'])!!}
</div>
<div class="form-group">
  {!!Form::label('Perfil')!!}
  {!!Form::text('profile', null , ['class'=>'form-control' , 'placeholder'=>'Favor ingrese perfil profesional'])!!}
</div>
<div class="form-group">
  {!!Form::label('Twitter')!!}
  {!!Form::text('twitter', null , ['class'=>'form-control' , 'placeholder'=>'Favor ingrese su usuario de twitter'])!!}
</div>
<div class="form-group">
  {!!Form::label('Imagen')!!}
  {!!Form::file('pic')!!}
</div>
<div class="form-group">
  {!!Form::label('Correo electrónico')!!}
  {!!Form::email('email', null ,['class'=>'form-control' , 'placeholder'=>'Favor ingrese un correo electrónico'])!!}
</div>
<div class="form-group">
  {!!Form::label('Contraseña')!!}
  {!!Form::password('password' , ['class'=>'form-control', 'placeholder'=>'Favor ingrese una contraseña'])!!}
</div>
