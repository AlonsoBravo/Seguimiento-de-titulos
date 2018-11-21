@include('layouts.header')

@yield('header')

<form class="nuevo_proyecto" action="" method="">
	<div class="nombre_proyecto">
		<label>Nombre de proyecto: </label>
		<div class="ingreso_nombre_proyecto">
			<input class="" type="text" required>
		</div>
	</div>
	<br>
	<br>
	<div class="cod_curso">
		<label class="">Código de curso: </label>
		<div class="ingreso_codigo_curso">
			<select class="opcion" required>
				<option value="">Escoja código de curso</option>
				@foreach($codigoCursos as $codigoCurso)
				<option value=""> {{ $codigoCurso -> CUR_ID }}</option>
				@endforeach
			</select>
		</div>
	</div>
	<br>
	<br>
	<div class="semestre_curso">
		<label>Semestre: </label>
		<div class="ingreso_semestre_curso">
			<select class="opcion" required>
				<option value="">Escoja semestre</option>
				<option value="7">7mo semestre</option>
				<option value="8">8vo semestre</option>
			</select>
		</div>
	</div>
	<br>
	<br>
	<div class="descripcion_proyecto">
		<label>Descripcion: </label>
		<div class="ingreso_descripcion_proyecto">
			<textarea class="form-control" required></textarea>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="clearfix" id='integrantes'>
		<div class="agregar_integrante_tooltip" style="float:left; width:20%;">
			<span class="agregar_integrante_tooltiptext">Agregar alumno</span>
			<label>Integrantes: 	<i class="fas fa-plus-square agregar_integrante" id="agregar_integrante"></i></label>
		</div>
		<div id="asignar_alumno" style="float:right; width:75%;">
			<div class="eliminar_integrante_tooltip">
				<span class="eliminar_integrante_tooltiptext">Eliminar alumno</span>
				<label for="asignar_alumno"><i class="fas fa-minus-square eliminar_integrante"></i></label>
			</div>
			<select class="opcion asignar_alumno" required style="top:-8px; position:relative;">
				<option value="">Escoja alumno</option>
				@foreach ($alumnos as $alumno)
				<option value="{{$alumno -> USU_ID}}">{{ $alumno->USU_NOMBRE." ".$alumno->USU_APATERNO." ".$alumno->USU_AMATERNO}}</option>
				@endforeach
			</select>
		</div>
	</div>
	<button class="button" type="submit" style="float: right">Guardar proyecto</button>
</form><!-- .proyecto -->

@include('layouts.footer')

@yield('footer')
