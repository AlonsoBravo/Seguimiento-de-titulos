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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', 'Auth\UsuarioLoginController@showLoginForm')->name('login');
Route::post('/login', 'Auth\UsuarioLoginController@login')->name('login');
Route::get('/logout', 'Auth\UsuarioLoginController@logout')->name('logout');
Route::get('/lista_curso', 'Auth\UsuarioController@index')->name('lista_curso');

Route::get('ingreso_proyecto', function(){
  return view('ingreso_proyecto');
});
