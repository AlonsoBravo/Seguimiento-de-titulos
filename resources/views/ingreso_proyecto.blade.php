@include('layouts.header')

@yield('header')
	<form class="formulario_de_proyecto" action="" method="post">
			<div class="formulario_proyecto clearfix">
				<div class="datos_alumnos">
					<div class="nombre_proyecto">
							<div class="nombre_de_proyecto">
								<span>Nombre Proyecto: </span>
							</div>
							<div class="titulo_proyecto">
								<input type="text" name="nombre_proyecto" placeholder="Nombre del proyecto" maxlength="50" required>
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
						</div><!-- .datos_alumnos -->

							<div class="grupos clearfix">
								<div class="titulo">
									<span>Nombre de proyecto: </span>
								</div><!-- .titulo -->
								<div class="nom_proyecto">
									<span>"Nombre proyecto"</span>
								</div>
								<div class="titulo">
									<span>Codigo de curso: </span>
								</div><!-- .titulo -->
								<div class="codigo_curso">
									<span>"Codigo curso"</span>
								</div>
								<div class="nombre_alumnos">
									<div class="titulo">
										<span>Integrantes: </span>
									</div>
									<div class="grupo_alumnos">
										<span>"Alumno 1"</span>
										<span>"Alumno 2"</span>
										<span>"Alumno 3"</span>
										<span>"Alumno 4"</span>
									</div>
								</div><!-- .nombre_alumnos -->
								<div class="guardar_proyecto ">
									<button type="submit" class="guardar button">Crear grupo</button>
								</div><!-- .guardar_proyecto -->
							</div><!-- .grupos -->

			</form><!-- .formulario_de_proyecto -->
		</div><!-- .formulario_proyecto -->

	@include('layouts.footer')

	@yield('footer')
