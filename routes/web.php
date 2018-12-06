<?php

Route::get('/', 'Auth\UsuarioLoginController@showLoginForm')->name('/');
Route::post('/login', 'Auth\UsuarioLoginController@login')->name('login');
Route::post('/logout', 'Auth\UsuarioLoginController@logout')->name('logout');

Route::group(['middleware' => ['rutasProfesorMiddleware']], function () {
    Route::get('/lista_curso', 'Cursos\CursoController@index')->name('lista_curso');
    Route::get('/lista_proyecto', 'Auth\UsuarioController@index')->name('lista_proyecto');
    Route::get('ingreso_proyecto', 'Proyectos\ProyectoController@index')->name('ingreso_proyecto');
    Route::post('guardar_proyecto','Proyectos\ProyectoController@guardarProyecto')->name('guardar_proyecto');
    Route::get('/buscar_alumno_asignado','Proyectos\ProyectoController@comprobarAsignacionAlumno')->name('buscar_alumno_asignado');
    Route::get('/buscar_seccion_alumno','Proyectos\ProyectoController@mostrarAlumnosSeccion')->name('buscar_seccion_alumno');

    Route::get('registro_hito/{id}','Hitos\HitoController@CargaDatosProyecto');
    Route::get('lista_hitos/{id}','Hitos\HitoController@CargarHitos');
    Route::post('/guardar_hito','Hitos\HitoController@ActualizaHito')->name('guardar_hito');

});

Route::group(['middleware' => ['rutasAdministrativoMiddleware']], function(){
  Route::get('/administrativo/proyectos','Auth\UsuarioController@administrativoIndex')->name('administrativo.proyectos');
});

Route::group(['middleware' =>['rutasAlumnoMiddleware']], function(){
  Route::get('alumno',function(){return view ('alumno');})->name('alumno');
});
