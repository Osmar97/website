<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateComunicationConfigsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comunication_configs', function (Blueprint $table) {
            $table->id();

            $table->string("comunication_config_type");
            $table->string("comunication_config_option");
            $table->unsignedBigInteger("estadoID")->default(1);
            $table->foreign("estadoID")->references("id")->on("estados");
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
        Schema::dropIfExists('comunication_configs');
    }
}
