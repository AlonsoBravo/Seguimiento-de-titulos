<?php

use Illuminate\Database\Seeder;

class UsuariosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('usuarios')->insert([
          'USU_ID' => 1,
          'USU_RUT' => '17.821.160-9',
          'USU_NOMBRE' =>'Alonso',
          'USU_APATERNO' =>'Bravo',
          'USU_AMATERNO'=>'Alegria',
          'USU_CORREO'=>str_random(10).'@gmail.com',
          'USU_TELEFONO'=>912345678,
          'password'=>bcrypt('secret'),
          'USU_ESTADO'=>'activo',
          'USU_TIPO'=>0,
        ]);
    }
}
