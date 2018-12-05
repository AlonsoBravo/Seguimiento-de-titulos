<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hito extends Model
{
  protected $table = 'hitos';

  protected $fillable = [
    'HIT_ID',
    'HIT_PRO_ID',
    'HIT_FECHA_ENTREGA',
    'HIT_ESTADO',
    'HIT_PORCENTAJE',
    'HIT_FEEDBACK',
    'HIT_SEMANA_ENTREGA',
    ];
}
