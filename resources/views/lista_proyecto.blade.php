@include('layouts.header')

@yield('header')

		<div class="lista_proyectos">
			<table class="table">
				  <thead>
				    <tr>
                      <th scope="col">ID</th>
				      <th scope="col">Nombre</th>
				      <th scope="col">Curso</th>
				      <th scope="col">Semestre</th>
				      <th scope="col">Estado de proyecto</th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				  @foreach($proyectos as $proy)
				      <tr>
				          <th>{{ $proy->PRO_ID }}</th>
				          <th>{{ $proy->PRO_NOMBRE }}</th>
				          <th>{{ $proy->PRO_CUR_ID }}</th>
				          <th>{{ $proy->PRO_SEMESTRE }}</th>
				          <th>{{ $proy->PRO_PORCENTAJE_ACT . '%' }}</th>
				          <th><a href="registro_hito/{{ $proy->PRO_ID }}" class="button">registrar hito</a></th>
				      </tr>
				  @endforeach
				  </tbody>
				</table> <!--.table-->
			</div> <!--.lista_cursos-->

			<div class="lista_proyectos_movile">
				<table class="table">
						<thead>
							<tr>
								<th scope="col">Proyectos</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
								    <p>ID: </p>
									<p>Nombre de proyecto: </p>
									<p>Nombre de curso: </p>
									<p>Semestre: </p>
									<p>Sección: </p>
									<p>Estado proyecto: </p>
									<br>
									<a href="#" class="button">Ver proyecto</a>
								</td>
							</tr>
						</tbody>
					</table> <!--.table-->
				</div> <!--.lista_cursos-->

@include('layouts.footer')

@yield('footer')
