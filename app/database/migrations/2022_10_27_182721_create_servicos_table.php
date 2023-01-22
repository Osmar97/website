<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {   
        if (Schema::hasTable('servicos') == false){

            Schema::create('servicos', function (Blueprint $table) {

                $table->id();
                $table->string("nome");
                $table->string("descServicos");
                
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
        Schema::dropIfExists('servicos');
    }
}
