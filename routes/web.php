<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', 'Auth\UsuarioLoginController@showLoginForm')->name('/');*/
Route::get('/', 'Auth\UsuarioLoginController@showLoginForm')->name('/');
Route::post('/login', 'Auth\UsuarioLoginController@login')->name('login');
Route::post('/logout', 'Auth\UsuarioLoginController@logout')->name('logout');

Route::group(['middleware' => ['rutasProfesorMiddleware']], function () {
  Route::get('/lista_curso', 'Cursos\CursoController@index')->name('lista_curso');
  Route::get('/lista_proyecto', 'Auth\UsuarioController@index')->name('lista_proyecto');
  Route::get('ingreso_proyecto', 'Proyectos\ProyectoController@index')->name('ingreso_proyecto');
});

Route::group(['middleware' => ['rutasAdministrativoMiddleware']], function(){
  Route::get('prueba',function(){return view ('prueba');})->name('prueba');
});

Route::group(['middleware' =>['rutasAlumnoMiddleware']], function(){
  Route::get('alumno',function(){return view ('alumno');})->name('alumno');
});

/*
<<<<<<< HEAD
<<<<<<< HEAD
Route::get('registro_hito', function(){
  return view('registro_hito');
});
=======

Route::get('registro_hito', function(){
   return view ('registro_hito');
});
>>>>>>> b12a5f7bd7fc11450be4035b038a9a386a5d30ee
=======

Route::get('registro_hito', function(){
   return view ('registro_hito');
});
>>>>>>> b12a5f7bd7fc11450be4035b038a9a386a5d30ee
*/
