<?php

namespace App\Http\Controllers\Cursos;

use App\Models\Curso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class CursoController extends Controller
{

    public function index(){
        $cursos = Curso::all();
        return view ('lista_curso',compact('cursos'));
    }
}
