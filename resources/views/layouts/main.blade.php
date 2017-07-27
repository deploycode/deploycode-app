<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Deploycode</title>
  <link rel="icon" href="{!!asset('favicon-deploycode.ico')!!}">
  {!!Html::style('css/bootstrap/bootstrap.min.css')!!}
  {!!Html::style('css/dashboard/metisMenu.min.css')!!}
  {!!Html::style('css/dashboard/sb-admin-2.css')!!}
  {!!Html::style('css/font-awesome.min.css')!!}
  {!!Html::style('css/main.css')!!}
  {!!Html::style('plugins/chosen/chosen.css')!!}
  <link rel="stylesheet" type="text/css" href=" {{asset('css/print.css')}}" media="print" />
</head>
<body>
  @include('analytics')
  <div id="wrapper">
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="{!!URL::to('/')!!}">@DeployCode</a>
      </div>
      {{-- social icons --}}
      <ul class="nav navbar-top-links navbar-right hidden-xs">
        <li>
          <a href="https://twitter.com/deploycode" target="_blank"> <i class="fa fa-twitter" aria-hidden="true"></i> </a>
        </li>
        <li>
          <a href="https://facebook.com/deploycode" target="_blank"> <i class="fa fa-facebook" aria-hidden="true"></i> </a>
        </li>
        <li>
          <a href="https://www.youtube.com/channel/UClpyLIU9DZ5XE8xSlKGlr4A" target="_blank"> <i class="fa fa-youtube-play" aria-hidden="true"></i>   </a>
        </li>
        <li>
          <a href="https://github.com/deploycode" target="_blank"> <i class="fa fa-github-square" aria-hidden="true"></i>   </a>
        </li>
        <li>
          <a href="https://co.linkedin.com/in/deploycode" target="_blank"> <i class="fa fa-linkedin" aria-hidden="true"></i>   </a>
        </li>
      </ul>
      {{-- main menu --}}
      <div class="navbar-inverse sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
          <ul class="nav" id="side-menu">
            @if (isset($post))
              <li class="hidden-xs" id="personal_card">
                <img src="{!!asset('imgs/users/'.$post->user->pic.'')!!}" class="img img-circle img-responsive" alt="">
                <div>
                  <h2>{{$post->user->name}}</h2>
                  <H3>{{$post->user->twitter}}</H3>
                  <H3>{{$post->user->profile}}</H3>
                </div>
              </li>
            @else
              <li class="hidden-xs" id="personal_card">
                <img src="{!!asset('imgs/logo-min-deploycode.png')!!}" class="img img-circle img-responsive" alt="">
                <div>
                  <h2>DeployCode</h2>
                </div>
              </li>
            @endif
            {{-- <li><a href="{!!URL::to('home')!!}"><i class="glyphicon glyphicon-home teme-home"></i> Inicio</a></li> --}}
            <li><a href="{!!URL::to('blog')!!}"><i class="glyphicon glyphicon-book  teme-blog"></i> Blog</a></li>
            <li><a href="{!!URL::to('profile')!!}"><i class="glyphicon glyphicon-user  teme-profile"></i> Sobre mi</a></li>
            <li><a href="{!!URL::to('contact')!!}"><i class="glyphicon glyphicon-envelope teme-contact"></i> Contacto</a></li>
            @if (isset(Auth::user()->name))
              <li><a href="#"> Categories <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('category')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('category/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="#"> Tags <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('tag')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('tag/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="#"> Posts <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('post')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('post/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="#"> Stacks <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('stack')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('stack/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="#"> Skills <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('skill')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('skill/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="#"> Jobs <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('job')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('job/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="#"> Projects <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('project')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('project/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="#"> Users <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                  <li><a href="{!!URL::to('/user')!!}"> Listar</a></li>
                  <li><a href="{!!URL::to('/user/create')!!}"> Agregar</a></li>
                </ul>
              </li>
              <li><a href="{!!URL::to('/logout')!!}"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
            @endif
          </ul>
        </div>
      </div>
    </nav>
    {{-- content --}}
    <div id="page-wrapper">
      <div class="container-fluid">
        @include('flash::message')
        @yield('section')
      </div>
    </div>
  </div>
  {!!Html::script('js/bootstrap/jquery.min.js')!!}
  {!!Html::script('js/bootstrap/bootstrap.min.js')!!}
  {!!Html::script('js/dashboard/metisMenu.min.js')!!}
  {!!Html::script('js/dashboard/sb-admin-2.js')!!}
  {!!Html::script('plugins/chosen/chosen.jquery.js')!!}
  @yield('scripts')

</body>
</html>
