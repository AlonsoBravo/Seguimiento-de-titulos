@include('layouts.header')

@yield('header')

<form class="formulario_creacion_proyecto" action="" method="post">
	<div class="datos_creacion_proyecto">
		<div class="nombre_proyecto clearfix">
			<div class="titulo">
				<span>Nombre proyecto: </span>
			</div>
			<div class="ingreso_nombre_proyecto">
				<input type="text" class="nom_proyecto" placeholder="Ingrese nombre proyecto">
			</div>
		</div><!-- .nombre_proyecto -->
		<div class="codigo_curso clearfix">
			<div class="titulo">
				<span>Codigo de curso: </span>
			</div>
			<div class="codigo">
				<select class="opcion">
					<option value="">"codigo curso"</option>
				</select>
			</div>
		</div><!-- .codigo_curso -->
			<div class="asignacion_alumno clearfix">
				<div class="titulo">
					<span>Asignar alumno: </span>
				</div>
				<div class="asignacion">
					<select class="opcion">
						<option value="">"Alumno"</option>
					</select>
				</div>
			</div>
			<div class="crear_proyecto">
				<button type="submit" class="button" name="button">Crear proyecto</button>
			</div>
	</div><!-- .datos_creacion_proyecto -->
</form><!-- .formulario_creacion_proyecto -->

<form class="editar_eliminar_proyecto" action="" method="post">
	<div class="grupos_proyectos clearfix">
		<table class="table">
			<thead>
				<tr>
					<th>Nombre proyecto</th>
					<th>Codigo curso</th>
					<th>Integrantes</th>
				</tr>
				<tbody>
					<tr>
						<td>"Nombre proyecto"</td>
						<td>"Codigo curso"</td>
						<td>
							<p>"Intregante 1"</p>
							<p>"Intregante 2"</p>
							<p>"Intregante 3"</p>
							<p>"Intregante 4"</p>
						</td>
						<td>
							<button class="button" type="submit">Editar</button>
							<br>
							<br>
							<button class="button" type="submit">Eliminar</button>
						</td>
					</tr>
				</tbody>
			</thead>
		</table>
	</div><!-- .grupos_proyectos -->
</form><!-- .editar_eliminar_proyecto -->

@include('layouts.footer')

@yield('footer')
