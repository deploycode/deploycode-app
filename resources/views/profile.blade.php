@extends('layouts.main')
@section('section')
  {{-- Extracto --}}
    <div class="row"><h3 id="personal" class="text-center teme-profile">Personal</h3></div>
    <div class="row">
      <div class="panel my-panel">
        <div class="panel-body">
          <table class="table">
            <tr>
               <div class="text-center">
                 <img id="profile_img" src="{!!asset('imgs/users/pic.png')!!}" alt="">
               </div>
              <td>Nombre:</td>
              <td style="text-align:right">Gabriel Ernesto García Rodríguez</td>
            </tr>
            <tr>
              <td>Residencia:</td>
              <td style="text-align:right">Bogotá - Colombia</td>
            </tr>
            <tr>
              <td>Movil:</td>
              <td style="text-align:right">(+57) 320 531 7510</td>
            </tr>
            <tr>
              <td>Email:</td>
              <td style="text-align:right">gabriel@deploycode.co</td>
            </tr>
            <tr>
              <td>Sitio Web:</td>
              <td style="text-align:right"><a target="_blank" href="http://www.deploycode.co">Blog</a></td>
            </tr>
            <tr>
              <td>Repositorio:</td>
              <td style="text-align:right"><a target="_blank" href="https://github.com/deploycode">Github</a></td>
            </tr>
            <tr>
              <td>Social:</td>
              <td style="text-align:right"><a target="_blank" href="https://www.linkedin.com/in/deploycode/">Linkedin</a></td>
            </tr>
          </table>
        </div>
      </div>
    </div>

    <div class="row"><h3 id="education" class="text-center teme-profile">Formación</h3></div>
    <div class="row">
      <div class="panel my-panel">
        <div class="panel-body">
          <table class="table">
            <thead>
              <th>Título Obtenido</th>
              <th class="text-right">Institución</th>
            </thead>
            <tbody>
              <tr>
                <div class="text-center">
                </div>
                <td>Especialista en Ingeniería de Software</td>
                <td style="text-align:right">Universidad Distrital Francisco Jose de Caldas (2017 - 2018)</td>
              </tr>
              <tr>
                <div class="text-center">
                </div>
                <td>Ingeniero Teleinformático</td>
                <td style="text-align:right">Universidad Tecnológica del Chocó "Diego Luis Córdoba" (2009 - 2016)</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>

  {{-- Resumen --}}
  {{-- <div class="row"><h3 id="extract" class="text-center teme-profile">Resumen</h3></div>
  <div class="row">
    <div class="panel my-panel">
      <div class="panel-body">
        <p>
          Desarrollador web desde 2013, escribo sobre software en mi blog www.deploycode.co
          he desarrollado desde completos CMS hasta plataformas e-comerce, en todos ellos me he desempeñado como Full Stack,
          llevando a cabo todo el proceso de ingeniería de las aplicaciones, análisis, diseño, pasando por la
          codificación hasta el despliegue de la aplicación.
        </p>
      </div>
    </div>
  </div>--}}

  {{-- Technical Skills --}}
  <div class="row"><h3 id="skills" class="text-center teme-profile">Habilidades Técnicas</h3></div>
  <div class="row">
    @foreach ($stacks as $stack)
      <div class="panel my-panel">
      <div class="panel-heading">{{$stack->name}}</div>
        <div class="panel-body">
          @foreach ($skills as $skill)
            @if ($skill->stack_id == $stack->id)
              <div class="progress" id="stacks">
                <div class="progress-bar progress-bar-deafult" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: {{$skill->value}}%;">
                  {{$skill->name}}
                </div>
              </div>
              <div style="display:none" id="stacks_print">
                <label for="">{{$skill->name}}</label>: {{$skill->value}}%
              </div>
            @endif
          @endforeach
        </div>
      </div>
    @endforeach
  </div>
  {{-- Experiencia --}}
  <div class="row"><h3 id="projects" class="text-center teme-profile">Experiencia Profesional</h3></div>
  <div class="row">
    @foreach ($jobs as $job)
      <div class="panel my-panel">
        <div class="panel-heading">{{$job->position}}</div>
        <div class="panel-body">
          <div class="row">
            <div class="col-xs-6"><label>{{$job->company}}</label></div>
            <div class="col-xs-6 text-right">
              @if ($job->start->diffInHours($job->finish, false) > 0)
                {{$job->start->format('F Y')}} -
                {{$job->finish->format('F Y')}}
                <?php
                   $fecha = $job->start->diff($job->finish);
                   echo "( $fecha->y años , $fecha->m meses )";
                ?>
              @else
                {{$job->start->format('F Y')}} - a la actualidad
                <?php
                   $fecha = $job->start->diff(\Carbon\Carbon::now());
                   echo "( $fecha->y años , $fecha->m meses )";
                ?>
              @endif
            </div>
          </div>
          <hr>
          <pre>{{$job->description}}</pre>
        </div>
        @foreach ($projects as $project)
          @if ($project->job_id == $job->id)
            <div class="panel-footer"><a href="{{$project->url}}" target="blanc">{{$project->name}}</a></div>
            <div class="panel-body">
              <p>{!! $project->description !!}</p>
            </div>
          @endif
        @endforeach
      </div>
    @endforeach
  </div>
  <div class="row no_web" id="constancias">
    <img class="img img-responsive" src="{{ asset('imgs/profile/cedula.jpg') }}">
    <img class="img img-responsive" src="{{ asset('imgs/profile/diploma.jpg') }}">
    <img class="img img-responsive" src="{{ asset('imgs/profile/diploma_especializacion.jpg') }}">
    <img class="img img-responsive" src="{{ asset('imgs/profile/indra.jpg') }}">
    <img class="img img-responsive" src="{{ asset('imgs/profile/optimeconsulting.jpg') }}">
    <img class="img img-responsive" src="{{ asset('imgs/profile/hablemosdesalud.jpg') }}">
    <img class="img img-responsive" src="{{ asset('imgs/profile/culturabakana.jpg') }}">
    <img class="img img-responsive" src="{{ asset('imgs/profile/delaminastudios.jpg') }}">
    {{--    <img src="{{ asset('imgs/profile/referencia01.jpg') }}"     class="img img-responsive">--}}
    {{--    <img src="{{ asset('imgs/profile/referencia02.jpg') }}"     class="img img-responsive">--}}
  </div>
@endsection
