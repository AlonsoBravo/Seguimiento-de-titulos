<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Proyecto extends Model
{
  protected $table = 'proyectos';

  protected $fillable = [
    'PRO_ID', 'PRO_CUR_ID', 'PRO_USU_ID', 'PRO_NOMBRE', 'PRO_DESCRIPCION', 'PRO_FECHA_INICIO', 'PRO_SEMESTRE', 'PRO_PORCENTAJE_ACT', 'PRO_ESTADO'
    ];
}
