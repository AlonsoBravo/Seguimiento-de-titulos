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
    return view('login');
});

Route::get('/lista_curso', function(){
  return view ('lista_curso');
});

Route::get ('/ingreso_proyecto', function(){
  return view ('ingreso_proyecto');
});

Route::get('/registro_hito', function(){
  return view('registro_hito');
});
