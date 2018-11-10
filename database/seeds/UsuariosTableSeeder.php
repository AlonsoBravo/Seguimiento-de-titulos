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
          'USU_ID' => 3,
          'USU_RUT' => '24.950.456-4',
          'USU_NOMBRE' =>'Ignacio',
          'USU_APATERNO' =>'Bravo',
          'USU_AMATERNO'=>'Morales',
          'USU_CORREO'=>str_random(10).'@gmail.com',
          'USU_TELEFONO'=>912345678,
          'password'=>bcrypt('secret'),
          'USU_ESTADO'=>'activo',
          'USU_TIPO'=>2,
        ]);
    }
}
