@include('layouts.header')

@yield('header')

		<div class="lista_cursos">
			<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">ID</th>
				      <th scope="col">Curso</th>
				      <th scope="col">Semestre</th>
				      <th scope="col">Año</th>
                      <th scope="col"></th>
				    </tr>
				  </thead>
				  @foreach($cursos as $cur)
				      <tr>
				          <th>{{ $cur->CUR_ID }}</th>
				          <th>{{ $cur->CUR_NOMBRE }}</th>
				          <th>{{ $cur->CUR_SEMESTRE }}</th>
				          <th>{{ $cur->CUR_ANO }}</th>
				          <th></th>
				      </tr>
				  @endforeach
				  <tbody>

				  </tbody>
				</table> <!--.table-->
			</div> <!--.lista_cursos-->

			<div class="lista_cursos_movile">
				<table class="table">
						<thead>
							<tr>
								<th scope="col">Proyectos</th>
							</tr>
						</thead>
						<tbody>
						    @foreach($cursos as $cur)
							<tr>
								<td>
									<p>ID: {{ $cur->CUR_ID }}</p>
									<p>Curso: {{ $cur->CUR_NOMBRE }}</p>
									<p>Semestre: {{ $cur->CUR_SEMESTRE }}</p>
									<p>Año: {{ $cur->CUR_ANO }}</p>
									<br>
									<a href="#" class="button">Ver Curso</a>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table> <!--.table-->
				</div> <!--.lista_cursos-->

@include('layouts.footer')

@yield('footer')
