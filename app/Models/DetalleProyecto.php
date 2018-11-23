<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleProyecto extends Model
{
  protected $table = 'detalle_proyectos';

  protected $fillable = [
    'DET_PRO_ID', 'DET_ALU_ID', 'PRO_ID',
    ];
}
