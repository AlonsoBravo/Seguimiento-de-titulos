<?php

namespace App\Http\Controllers\Hitos;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Curso;
use App\Models\Usuarios;
use App\Models\Proyecto;
use App\Models\DetalleProyecto;


class HitoController extends Controller
{
    public function CargaDatosProyecto($id){
        $proyecto = DB::table('proyectos')->where('PRO_ID',$id)->get();
        $alumnos  = DB::table('detalle_proyectos')
            ->select('USU_NOMBRE','USU_APATERNO','USU_AMATERNO','USU_CORREO')
            ->join('usuarios','USU_ID','=','DET_ALU_ID')
            ->where('PRO_ID','=',$id)
            ->get();
        $detpro = DB::table('detalle_proyectos')->where('PRO_ID',$id)->get();
        return view ('registro_hito',compact('proyecto','alumnos','detpro'));
    }
    
    
    
}
