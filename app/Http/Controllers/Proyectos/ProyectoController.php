<?php

namespace App\Http\Controllers\Proyectos;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\DetalleCurso;
use App\Models\Usuarios;
use App\Models\Proyecto;
use App\Models\DetalleProyecto;
use App\Models\Hito;
use Response;


class ProyectoController extends Controller
{
  public function index(Request $request){
    $seccionCursos = DB::table('detalle_cursos')
                        ->select('CUR_SECCION')
                        ->distinct()
                        ->get();

    return view ('ingreso_proyecto',compact('seccionCursos'));
  }

  public function comprobarAsignacionAlumno(Request $request){

    if($request->ajax()){

      $alumnoAsignado = $request->query('$idAlumno');

      //se valida que el alumno asignado no se encuentre en otro proyecto
      $verificaAsignacionAlumno = DB::table('detalle_proyectos')
      ->where('DET_ALU_ID', $alumnoAsignado)
      ->value('DET_ALU_ID');


      if($verificaAsignacionAlumno == $alumnoAsignado){
        $salida= '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>¡Alumno se encuentra asignado a otro proyecto!
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>';

        return Response($salida);
      }
    }
  }

  public function mostrarAlumnosSeccion(Request $request){
    if($request->ajax()){
      $seccionCursos = DB::table('detalle_cursos')
                          ->select('CUR_SECCION')
                          ->distinct()
                          ->get();

      $seccionCurso = $request->query('$seccion');

      $alumnos = DB::table('usuarios')
                    ->join('detalle_cursos','usuarios.USU_ID','=','detalle_cursos.USU_ID')
                    ->select('usuarios.USU_APATERNO', 'usuarios.USU_AMATERNO', 'usuarios.USU_NOMBRE')
                    ->where('detalle_cursos.CUR_SECCION',$seccionCurso)
                    ->where('detalle_cursos.CUR_ID','TP401')
                    ->get();

      return Response ($alumnos);
    }
  }

  public function guardarProyecto(Request $request){

    //se toman los id de los select para asignacion de alumno
    $alumnosAsignados = collect($request ->alumno);

    foreach ($alumnosAsignados as $alumnoAsignado){

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
      'PRO_ESTADO' => 1,
      'PRO_SECCION'=> $request->seccion_curso,
      ]
    );

    foreach ($alumnosAsignados as $alumnoAsignado){
      DB::table('detalle_proyectos')->insert(
        ['DET_ALU_ID' => $alumnoAsignado,
        'PRO_ID'=> $idProyecto]
      );
    }

    for ($i=1; $i<19 ; $i++) {
      DB::table('hitos')->insert([
        'HIT_PRO_ID' => $idProyecto,
        'HIT_SEMANA_ENTREGA'=> $i,
      ]);
    }

    return redirect('ingreso_proyecto')->with('mensaje','ok');
  }
}
