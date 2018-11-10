<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Route;

class UsuarioLoginController extends Controller{

    public function __construct(){
      $this->middleware('guest:usuario',['except'=> ['logout']]);
    }

    public function username(){
        return 'rut';
    }

    public function showLoginForm(){
        return view('login');
    }

    public function login(Request $request){

      $this->validate($request,[
          'rut' => 'required',
          'password' => 'required'
      ]);

      if(Auth::guard('usuario')->attempt(['USU_RUT' => $request->rut, 'password'=> $request->password], $request->remember)){
          return redirect()->intended(route('lista_curso'));
      }
      return redirect()->back()->withInput($request->only('rut','remember'));
    }

    public function logout(){
        Auth::guard('usuario')->logout();
        return redirect ('/');
    }
}
