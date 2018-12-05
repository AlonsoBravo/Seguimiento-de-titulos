<?php

namespace App\Http\Controllers\Hitos;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Curso;
use App\Models\Usuarios;
use App\Models\Proyecto;
use App\Models\DetalleProyecto;
use App\Models\Hito;

class HitoController extends Controller
{
    public function CargaDatosProyecto($id){
        $explo = explode("-",$id);
        $idHito = $explo[0];
        $idProy = $explo[1];
        
        $hitos = DB::table('hitos')->where('HIT_ID',$idHito)->get();
        $proyecto = DB::table('proyectos')->where('PRO_ID',$idProy)->get();
        $alumnos  = DB::table('detalle_proyectos')
            ->select('USU_NOMBRE','USU_APATERNO','USU_AMATERNO','USU_CORREO')
            ->join('usuarios','USU_ID','=','DET_ALU_ID')
            ->where('PRO_ID','=',$idProy)
            ->get();
        $detpro = DB::table('detalle_proyectos')->where('PRO_ID',$idProy)->get();
        return view ('registro_hito',compact('hitos','proyecto','alumnos','detpro'));
    }
    
    public function CargarHitos($id){
        $hitos = DB::table('hitos')->where('HIT_PRO_ID',$id)->get();
        $proyecto = DB::table('proyectos')->where('PRO_ID',$id)->get();
        $alumnos  = DB::table('detalle_proyectos')
            ->select('USU_NOMBRE','USU_APATERNO','USU_AMATERNO','USU_CORREO')
            ->join('usuarios','USU_ID','=','DET_ALU_ID')
            ->where('PRO_ID','=',$id)
            ->get();
        $detpro = DB::table('detalle_proyectos')->where('PRO_ID',$id)->get();
        return view('lista_hitos',compact('hitos','proyecto','alumnos','detpro'));
    }
    
    public function ActualizaHito(Request $request){
        $porc = $request->valoriza;
        $nota = (5.5*$porc)/100;
        
        DB::table('hitos')->where('HIT_ID',$request->idhito)
            ->update(array(
                'HIT_FECHA_ENTREGA' => $request->fecha-entrega,
                'HIT_ESTADO'        => $request->estado-hito,
                'HIT_PORCENTAJE'    => $request->valoriza,
                'HIT_COMENTARIO'    => $request->detalle,
                'HIT_FEEDBACK'      => $request->feedback));
        return redirect('ingreso_proyecto')->with('mensaje','ok');
    }
}
