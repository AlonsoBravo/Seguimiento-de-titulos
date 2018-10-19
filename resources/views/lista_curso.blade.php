@include('layouts.header')

@yield('header')

		<div class="lista_cursos">
			<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Nombre Proyecto</th>
				      <th scope="col">Nombre Curso</th>
				      <th scope="col">Semestre</th>
				      <th scope="col">Seccion</th>
				      <th scope="col">Estado de proyecto</th>
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
									<p>Nombre de proyecto: </p>
									<p>Nombre de curso: </p>
									<p>Semestre: </p>
									<p>Sección: </p>
									<p>Estado proyecto: </p>
									<br>
									<a href="#" class="button">Ver proyecto</a>
								</td>
							</tr>
							<tr>
								<td>
									<p>Nombre de proyecto: </p>
									<p>Nombre de curso: </p>
									<p>Semestre: </p>
									<p>Sección: </p>
									<p>Estado proyecto: </p>
									<br>
									<a href="#" class="button">Ver proyecto</a>
								</td>
							</tr>
							<tr>
								<td>
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
