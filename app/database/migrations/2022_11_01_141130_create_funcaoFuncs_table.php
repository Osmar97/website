<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatefuncaoFuncsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('funcaoFuncs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("estadoID")->default(1);
            $table->foreign("estadoID")->references("id")->on("estados");
            
            $table->unsignedBigInteger("FkIDFunc");
            $table->foreign("FkIDFunc")->references("id")->on("funcionarios");

            $table->unsignedBigInteger("FkIDFuncao");
            $table->foreign("FkIDFuncao")->references("id")->on("funcoes");

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('funcaoFuncs');
    }
}
