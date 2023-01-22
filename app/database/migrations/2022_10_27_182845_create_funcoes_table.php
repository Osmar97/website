<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFuncoesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        if (Schema::hasTable('funcoes') == false){

            Schema::create('funcoes', function (Blueprint $table) {

                $table->id();
                $table->string("nomeFuncao",100);
                $table->string("descFuncao");

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
        Schema::dropIfExists('funcoes');
    }
}
