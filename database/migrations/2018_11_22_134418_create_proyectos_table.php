<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProyectosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proyectos', function (Blueprint $table) {
            $table->increments('PRO_ID');
            $table->integer('PRO_CUR_ID');
            $table->integer('PRO_USU_ID');
            $table->string('PRO_NOMBRE');
            $table->text('PRO_DESCRIPCION');
            $table->date('PRO_FECHA_INICIO');
            $table->string('PRO_SEMESTRE');
            $table->string('PRO_SECCION');
            $table->string('PRO_PORCENTAJE_ACT');
            $table->integer('PRO_ESTADO');
          });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('proyectos');
    }
}
