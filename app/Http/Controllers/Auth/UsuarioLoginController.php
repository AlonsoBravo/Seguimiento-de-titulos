<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Route;

class UsuarioLoginController extends Controller{

    public function showLoginForm(){
      return view('login');
    }

    public function username(){
        return 'rut';
    }

    public function login(Request $request){

        $this->validate($request,[
            'rut' => 'required',
            'password' => 'required|min:6'
        ]);

        $tipoUsuario = DB::table('usuarios')->where('USU_RUT', $request->rut)->value('USU_TIPO');
        $nombreUsuario = DB::table('usuarios')->select('USU_NOMBRE','USU_APATERNO', 'USU_AMATERNO')->where('USU_RUT',$request->rut)->get();

        $usuNombre ="";

        foreach ($nombreUsuario as $nombre) {
          $usuNombre .= ' '.$nombre->USU_NOMBRE.' '. $nombre->USU_APATERNO.' '.$nombre->USU_AMATERNO;
        }

        switch ($tipoUsuario) {
            case 0:
                if(Auth::guard('usuario')->attempt(['USU_RUT' => $request->rut, 'password'=> $request->password], $request->remember)){
                    $idProfesor = DB::table('usuarios')->where('USU_RUT', $request->rut)->value('USU_ID');
                    $sessionUsuario = session(['autenticado' => $tipoUsuario, 'idProfesor' => $idProfesor, 'nombreUsuario' =>$usuNombre]);
                    return redirect()->intended(route('lista_curso'));
                }
                return redirect()->back()->withInput($request->only('rut','remember'))->with('mensaje', 'error');
            break;

            case 1:
                if(Auth::guard('usuario')->attempt(['USU_RUT' => $request->rut, 'password'=> $request->password], $request->remember)){
                    $sessionUsuario = session(['autenticado' => $tipoUsuario,'nombreUsuario' =>$usuNombre]);
                    return redirect()->intended(route('administrativo.proyectos'));
                }
                return redirect()->back()->withInput($request->only('rut','remember'));
            break;

            case 2:
                if(Auth::guard('usuario')->attempt(['USU_RUT' => $request->rut, 'password'=> $request->password], $request->remember)){
                    $sessionUsuario = session(['autenticado' => $tipoUsuario, 'nombreUsuario' =>$usuNombre]);
                    return redirect()->intended(route('alumno'));
                }
                return redirect()->back()->withInput($request->only('rut','remember'));
            break;

            default:
                return redirect()->intended(route('/'));
            break;
        }
    }

    public function logout(Request $request){
        Auth::logout();
        $request->session()->flush();
        return redirect ('/');
    }
}
