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
							<tr>
								<td>
									<p>ID: </p>
									<p>Curso: </p>
									<p>Semestre: </p>
									<p>Año: </p>
									<br>
									<a href="#" class="button">Ver Curso</a>
								</td>
							</tr>
						</tbody>
					</table> <!--.table-->
				</div> <!--.lista_cursos-->

@include('layouts.footer')

@yield('footer')
