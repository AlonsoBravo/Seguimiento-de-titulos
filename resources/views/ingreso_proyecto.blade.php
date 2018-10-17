@include('layouts.header')

@yield('header')
		<div class="formulario_proyecto">
			<form class="formulario_de_proyecto" action="" method="post">
						<div class="nombre_proyecto clearfix">
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

							<div class="guardar_proyecto ">
								<button type="submit" class="guardar button">Guardar</button>
							</div><!-- .guardar_proyecto -->
			</form><!-- .formulario_de_proyecto -->
		</div><!-- .formulario_proyecto -->

	@include('layouts.footer')

	@yield('footer')
