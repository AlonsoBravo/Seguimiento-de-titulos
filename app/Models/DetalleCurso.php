<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleCurso extends Model
{
    protected $table = 'detalle_cursos';

    protected $fillable = [
      'DET_CUR_ID',
      'CUR_ID',
      'USU_ID',
      'CUR_SECCION', 
    ];
}
