<?php

namespace App\Http\Controllers\Cursos;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class CursoController extends Controller
{
    public function index(){
        $cursos = DB::table('cursos')->get();
        return view ('lista_curso',compact('cursos'));
    }
}
