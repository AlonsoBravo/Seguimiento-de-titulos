<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Curso extends Model
{
  protected $table = 'cursos';

  protected $fillable = [
    'CUR_ID', 'CUR_NOMBRE', 'CUR_SEMESTRE', 'CUR_ANO'
    ];
}
