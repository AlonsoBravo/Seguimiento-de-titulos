<?php

namespace App\Http\Middleware;

use Closure;

class rutasAlumnoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $sessionUsuario = session('autenticado');

        if($sessionUsuario != 2 || !$request->session()->exists('autenticado')){
          $request->session()->forget('autenticado');
          return redirect()->route('/');
        }
        return $next($request);
    }
}
