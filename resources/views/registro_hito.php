<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Listados de Cursos</title>
		<link rel="stylesheet" href="../../public/css/estilos.css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans" rel="stylesheet">
	  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</head>
	<body>
		<div class="contenedor clearfix">
			<div class="logo">
				<img class="logo" src="../../public/img/logo.jpg" alt="logo">
			</div>
				<nav class="navegacion clearfix">
					<a href="#" class="button">Inicio</a>
					<a href="#" class="button">Cursos</a>
					<a href="#" class="button">Proyectos</a>
					<a href="#" class="button">Informes</a>
					<a href="#" class="button">Ayuda</a>
				</nav><!--.navagacion-->
		<form class="formulario_hito" action="" method="post">
			<div class="registro clearfix">
				<div class="datos_proyecto">

					<div class="nombre_proyecto clearfix">
						<div class="titulo">
							<p>Nombre de proyecto: </p>
						</div>
							<div class="proyecto">
								<span>Proyecto xxxx</span>
							</div>
					</div><!-- .nombre_proyecto -->

					<div class="nombres_participantes clearfix">
						<div class="titulo">
							<span>Integrantes: </span>
						</div>
						<div class="nombres">
							<span>Integrante 1</span>
							<span>Integrante 2</span>
							<span>Integrante 3</span>
							<span>Integrante 4</span>
						</div>
					</div><!-- .nombres_participantes -->

						<div class="seccion_curso clearfix">
							<div class="titulo">
								<span>Seccion curso: </span>
							</div>
							<div class="nombre_seccion">
								<span>Seccion xxxx</span>
							</div>
						</div><!-- .seccion_curso -->

						<div class="fecha_ultimo_hito clearfix">
							<div class="titulo">
								<span>Fecha último hito: </span>
							</div>
							<div class="fecha">
								<span>"dd-mm-yyyy"</span>
							</div>
						</div><!-- fecha_ultimo_hito -->

						<div class="fecha_entrega_hito clearfix">
							<div class="titulo">
								<span>Fecha entrega hito: </span>
							</div>
							<div class="fecha">
								<input type="date">
							</div>
						</div><!-- .fecha_entrega_hito -->

						<div class="estado_hito">
							<div class="titulo">
								<span>Estado de hito: </span>
							</div>
							<div class="estado">
								<select class="opcion">
									<option value="">--Escoja un estado--</option>
									<option value="entregado">Entregado</option>
									<option value="atrasado">Atrasado</option>
									<option value="no_entregado">No entregado</option>
								</select>
							</div>
						</div><!-- .estado_hito -->

						<div class="valoracion_hito clearfix">
							<div class="titulo">
								<span>Valoración: </span>
							</div>
							<div class="valoracion">
								<select class="opcion">
									<option value="">--Escoja un valor--</option>
									<option value="5">5%</option>
									<option value="10">10%</option>
									<option value="15">15%</option>
									<option value="20">20%</option>
									<option value="25">25%</option>
									<option value="30">30%</option>
									<option value="35">35%</option>
									<option value="40">40%</option>
									<option value="45">45%</option>
									<option value="50">50%</option>
									<option value="55">55%</option>
									<option value="60">60%</option>
									<option value="65">65%</option>
									<option value="70">70%</option>
									<option value="75">75%</option>
									<option value="80">80%</option>
									<option value="85">85%</option>
									<option value="90">90%</option>
									<option value="95">95%</option>
									<option value="100">100%</option>
								</select>
						</div>
						</div><!-- .valoracion -->
					</div><!-- .datos_proyecto -->

					<div class="registo_hito">
						<div class="descripcion_hito">
							<span>Ingresar hito: </span>
							<br>
							<textarea class="texto"></textarea>
						</div><!-- .registro_hito -->

						<div class="feedback">
							<span>Ingrese feedback: </span>
							<br>
							<textarea class="texto"></textarea>
						</div><!-- .feedback -->

						<div class="guardar_hito">
							<button type="submit" class="guardar button">Guardar Hito</button>
						</div><!-- .guardar_hito -->
					</div><!-- .registo_hito -->

				</div><!-- .registro -->
			</form><!-- .formulario_hito -->
		</div> <!--.contenedor-->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	</body>
</html>
