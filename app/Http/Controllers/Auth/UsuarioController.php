<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Proyecto;

class UsuarioController extends Controller{

    public function _construct(){
      $this->middleware('auth:usuario');
    }

    public function index(){
        $proyectos = Proyecto::all();
        return view ('lista_proyecto',compact('proyectos'));
    }

}
