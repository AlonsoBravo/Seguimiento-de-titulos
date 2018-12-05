@include('layouts.header')

@yield('header')

@if(session('mensaje') == 'ok')
	<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>¡Proyecto guardado con éxito!</strong>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
	</div>
@elseif(session('mensaje') == 'error')
	<div class="alert alert-danger alert-dismissible fade show" role="alert">
			<strong>¡Error al guardar proyecto!</strong>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
	</div>
@endif
<div class="error">

</div>
<form class="nuevo_proyecto" action="{{route('guardar_proyecto')}}" method="POST">
	{{ csrf_field() }}
	<div class="nombre_proyecto">
		<label>Nombre de proyecto: </label>
		<div class="ingreso_nombre_proyecto">
			<input class="" type="text" name="nombre_proyecto" required>
		</div>
	</div>
	<br>
	<br>
	<div class="cod_curso">
		<label class="">Sección de curso: </label>
		<div class="ingreso_codigo_curso">
			<select class="opcion seccion" name="seccion_curso" id="codigo_curso" required>
				<option value="">Escoja sección de curso</option>
				@foreach($seccionCursos as $seccionCurso)
					<option value="{{ $seccionCurso -> CUR_SECCION }}"> {{ $seccionCurso -> CUR_SECCION }}</option>
				@endforeach
			</select>
		</div>
	</div>
	<br>
	<br>
	<div class="descripcion_proyecto">
		<label>Descripcion: </label>
		<div class="ingreso_descripcion_proyecto">
			<textarea class="form-control" name="descripcion" required></textarea>
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
				<label for="asignar_alumno"><i class="fas fa-minus-square eliminar_integrante" id="eliminar_integrante"></i></label>
			</div>
			<select class="opcion asignar_alumno" id="alumnos" name="alumno[]" required style="top:-8px; position:relative;">
				<option value="">--Escoja alumno--</option>
			</select>
		</div>
	</div>
	<button type="submit" class="button" style="float:right;">Guardar proyecto</button>
</form><!-- .proyecto -->


<script type="text/javascript">

			$(document).on('change','select.asignar_alumno',function(){
				$idAlumno = $(this).val();
				$.ajax({
					type:'get',
					url:'{{URL::to('buscar_alumno_asignado')}}',
					data:{$idAlumno},
					success:function(data){
						$('.error').html(data);
					}
				});
			});

			$(document).on('change', 'select.seccion',function(){
				$seccion = $(this).val();
				$.ajax({
					type:'get',
					url:'{{URL::to('buscar_seccion_alumno')}}',
					data:{$seccion},
					success:function(data){
						$('.asignar_alumno').html(data);
					}
				});
			});

</script>

@include('layouts.footer')

@yield('footer')
