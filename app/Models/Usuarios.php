<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Usuarios extends Authenticatable{

  protected $guard = 'usuario';

  protected $fillable = [
    'USU_ID', 'USU_RUT', 'USU_NOMBRE', 'USU_APATERNO', 'USU_AMATERNO', 'USU_CORREO', 'USU_TELEFONO', 'password', 'USU_ESTADO', 'USU_TIPO'
    ];

  protected $hidden = [
    'password','remember_token',
  ];
}
