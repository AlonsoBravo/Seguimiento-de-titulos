<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Proyecto;

class UsuarioController extends Controller{

    public function index(){
        $proyectos = Proyecto::all();
        return view ('lista_proyecto',compact('proyectos'));
    }

    public function administrativoIndex(){
      $proyectos = Proyecto::all();
      return view ('administrativo.lista_proyecto',compact('proyectos'));
    }
}
