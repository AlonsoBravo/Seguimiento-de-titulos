<?php

namespace App\Http\Controllers\Proyectos;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Curso;
use App\Models\Usuarios;
use App\Models\Proyecto;
use App\Models\DetalleProyecto;

class ProyectoController extends Controller
{
  public function index(Request $request){
    $codigoCursos = Curso::all();

    $alumnos = Usuarios::where('USU_TIPO',2)
    ->where('USU_ESTADO','Activo')
    ->orderBy('USU_APATERNO','asc')
    ->orderby('USU_AMATERNO', 'asc')
    ->orderBy('USU_NOMBRE', 'asc')
    ->get();
    return view ('ingreso_proyecto',compact('codigoCursos','alumnos'));
  }

  public function guardarProyecto(Request $request){
    //se obtiene la fecha actual del sistema en formato yy/mm/dd.
    $fecha = new \DateTime();

    //se busca el maximo id de la tabla proyectos para aumentarlo en 1
    $idProyecto = DB::table('proyectos')->max('PRO_ID') + 1;

    //se toman los id de los select para asignacion de alumno
    $alumnosAsignados = collect($request ->alumno);

    //se recorre la coleccion de datos para guardar multiples alumnos asignados con el id de proyecto correspondiente.
    foreach ($alumnosAsignados as $alumnosAsignado){

      //se valida que el alumno asignado no se encuentre en otro proyecto
      $verificaAsignacionAlumno = DB::table('detalle_proyectos')
                                  ->where('DET_ALU_ID', $alumnosAsignado)
                                  ->value('DET_ALU_ID');

      if($verificaAsignacionAlumno == $alumnosAsignado){
        $alumno = Usuarios::where('USU_ID', $alumnosAsignado)
                  ->get();

        return view('ingreso_proyecto', compact('alumno'));
      }
    }
    DB::table('proyectos')->insert(
      ['PRO_ID' => $idProyecto,
      'PRO_CUR_ID'=> $request->codigo_curso,
      'PRO_USU_ID'=>$request->session()->get('idProfesor'),
      'PRO_NOMBRE'=> $request->nombre_proyecto,
      'PRO_DESCRIPCION'=>$request->descripcion,
      'PRO_FECHA_INICIO'=>$fecha,
      'PRO_SEMESTRE' => 'I',
      'PRO_PORCENTAJE_ACT' => 0,
      'PRO_ESTADO' => 1,]
    );
    foreach ($alumnosAsignados as $alumnosAsignado){
      DB::table('detalle_proyectos')->insert(
        ['DET_ALU_ID' => $alumnosAsignado,
        'PRO_ID'=> $idProyecto]
      );
    }
    return redirect('ingreso_proyecto')->with('mensaje','ok');
  }
}
