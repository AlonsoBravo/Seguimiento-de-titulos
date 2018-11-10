<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hito extends Model
{
  protected $table = 'hitos';

  protected $fillable = [
    'HIT_ID', 'HIT_PRO_ID', 'HIT_FECHA', 'HIT_ESTADO', 'HIT_VALORIZCION', 'HIT_PORCENTAJE', 'HIT_FEEDBACK'
    ];
}
