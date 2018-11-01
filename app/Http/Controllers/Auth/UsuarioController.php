<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UsuarioController extends Controller{

    public function _construct(){
      $this->middleware('auth:usuario');
    }

    public function index(){
        return view ('lista_curso');
    }

}
