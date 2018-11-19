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
          'USU_ID' => 4,
          'USU_RUT' => '16.143.858-8',
          'USU_NOMBRE' =>'Karina',
          'USU_APATERNO' =>'Morales',
          'USU_AMATERNO'=>'Mora',
          'USU_CORREO'=>str_random(10).'@gmail.com',
          'USU_TELEFONO'=>912345678,
          'password'=>bcrypt('secret'),
          'USU_ESTADO'=>'activo',
          'USU_TIPO'=>2,
        ]);
    }
}
