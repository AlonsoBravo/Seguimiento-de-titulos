@section('header')
  <!DOCTYPE html>
  <html lang="es" dir="ltr">
    <head>
      <meta charset="utf-8">
      <title>Listados de Cursos</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="/css/estilos.css">
      <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans" rel="stylesheet">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </head>
    <body>
      <div class="contenedor clearfix">
        <div class="logo">
          <img class="logo" src="/img/logo.jpg" alt="logo">
      </div>
      <div class="menu_movil clearfix">
        <div class="boton_menu" onclick="abrirMenuMovil();">
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div id="elementos-menu-movil" class="elementos-menu-movil">
          <a href="{{route('administrativo.proyectos')}}" class="button">Proyectos</a>
          <a href="{{route('administrativo.cursos')}}" class="button">Cursos</a>
          <a href="#" class="button">Informes</a>
          <a href="#" class="button">Ayuda</a>
          <a href= "{{route ('logout')}}" class="button"
            onclick="event.preventDefault();
            document.getElementById('logout-form').submit();">Cerrar sesión
          </a>
          <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            {{ csrf_field()}}
        </form>
        </div>
      </div>
    <nav class="navegacion clearfix">
      <ul>
       <li><a href="{{route('administrativo.proyectos')}}" class="button">Proyectos</a></li>
       <li><a href="{{route('administrativo.cursos')}}" class="button">Cursos</a></li>
       <li><a href="#" class="button"><i class="far fa-user"></i>{{session('nombreUsuario')}}<i class="fas fa-angle-down"></i></a>
          <ul>
            <li><a href="#" class="button">Informes</a></li>
            <li><a href="#" class="button">Ayuda</a></li>
            <li><a href= "{{route ('logout')}}" class="button"
              onclick="event.preventDefault();
              document.getElementById('logout-form').submit();">Cerrar sesión
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              {{ csrf_field() }}
          </form>
          </ul>
        </li>
      </ul>
    </nav><!--.navegacion-->
@endsection
