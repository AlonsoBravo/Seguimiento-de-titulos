<?php

namespace App\Http\Controllers\Cursos;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CursoController extends Controller
{
    public function index(){
        return view ('lista_curso');
    }
}
