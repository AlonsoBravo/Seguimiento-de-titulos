<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
	<meta charset="utf-8">
		<title>Ingreso de Proyecto</title>
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

		<div>
			<nav class="navegacion clearfix">
				<a href="#" class="button">Inicio</a>
				<a href="lista_curso.php" class="button">Cursos</a>
				<a href="#" class="button">Proyectos</a>
				<a href="#" class="button">Informes</a>
				<a href="#" class="button">Ayuda</a>
				</nav>
			</div><!--.navagacion-->
		<div class="formulario_proyecto">
			<form class="formulario_de_proyecto" action="" method="post">
				<div class="proyecto clearfix">
						<div class="nombre_proyecto clearfix">
								<div class="nombre_de_proyecto">
									<span>Nombre Proyecto: </span>
								</div>
								<div class="titulo_proyecto">
									<input type="text" type="text" name="nombre_proyecto" placeholder="Nombre del proyecto" maxlength="50" required>
								</div>
						</div><!-- .nombre_proyecto -->

						<div class="codigo_cursos">
								<div>
									<span>Codigo del Curso: </span>
								</div>
								<div class="codigo">
									<select class="opcion">
										<option value="">--Escoja un codigo--</option>
										<option value="codigo">xxxx</option>
									</select>
								</div>
							</div><!-- .codigo_curso -->

						<div class="asignar_alumnos">
								<div>
									<span>Asignar Alumnos: </span>
								</div>
								<div class="alumnos">
									<select class="opcion">
										<option value="">-- Alumnos --</option>
										<option value="nombre">Nombre Apellido</option>
									</select>
								</div>
							</div><!-- .asignar_alumnos -->

							<div class="guardar_proyecto ">
								<button type="submit" class="guardar button">Guardar</button>
							</div><!-- .guardar_proyecto -->

				</div>
			</form><!-- .formulario_de_proyecto -->
		</div>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	</div>
	</body>
</html>
