<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFuncionariosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (Schema::hasTable('funcionarios') == false){

            Schema::create('funcionarios', function (Blueprint $table) {

                $table->id();
                $table->string("nomeFuncionario");
                $table->longText("descricaoFuncionario");
                $table->unsignedBigInteger("estadoID")->default(1);
                $table->foreign("estadoID")->references("id")->on("estados");
                $table->timestamps();
            
            });

        }    
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('funcionarios');
    }
}
