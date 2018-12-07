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
use Response;

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
        $valorizacionHito = $request->valoriza;// valorizacion entregada por el profesor

        $idHito = $request->input('idhito');
        $idProyecto = $request->input('idproy');

        $semanaEntregaHito = DB::table('hitos')
                          ->where('HIT_ID', $idHito)
                          ->value('HIT_SEMANA_ENTREGA');

        $porcentajeAnteriorObtenido = DB::table('hitos')
                                      ->where('HIT_PRO_ID', $idProyecto)
                                      ->where('HIT_SEMANA_ENTREGA', $semanaEntregaHito-1)
                                      ->value('HIT_PORCENTAJE');

        $porcentajeIdeal = 5.5*$semanaEntregaHito;// porcentaje ideal respecto a la semana correspondiente

        $porcentajeHito = (5.5*$valorizacionHito)/100+$porcentajeAnteriorObtenido; // porcentaje real obtenida respecto al porcentaje ideal por semana.

        DB::table('hitos')
            ->where('HIT_ID','=',$idHito)
            ->update([
                'HIT_FECHA_ENTREGA' => $request->fechaentrega,
                'HIT_ESTADO'        => $request->estadohito,
                'HIT_PORCENTAJE'    => $porcentajeHito,
                'HIT_COMENTARIO'    => $request->detalle,
                'HIT_FEEDBACK'      => $request->feedback
            ]);

        $porcentajeCumulado = ($porcentajeHito/$porcentajeIdeal)*100;// porcentaje que representa el estado actual del proyecto

        //se actualiza la tabla de proyectos con el nuevo porcentaje acumulado.
        DB::table('proyectos')
                 ->where('PRO_ID', $idProyecto)
                 ->update(['PRO_PORCENTAJE_ACT'=>$porcentajeCumulado]);

        return redirect('lista_proyecto')->with('mensaje','ok');
    }
}
