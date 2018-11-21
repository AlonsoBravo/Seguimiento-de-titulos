<?php

namespace App\Http\Controllers\Proyectos;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Curso;
use App\Models\Usuarios;

class ProyectoController extends Controller
{
    public function index(){
      $codigoCursos = Curso::all();
      $alumnos = Usuarios::where('USU_TIPO',2)
                          ->where('USU_ESTADO','Activo')
                          ->orderBy('USU_NOMBRE','asc')
                          ->get();
      return view ('ingreso_proyecto',compact('codigoCursos','alumnos'));
    }
}
