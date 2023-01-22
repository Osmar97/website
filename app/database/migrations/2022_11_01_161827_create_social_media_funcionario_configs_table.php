<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSocialMediaFuncionarioConfigsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('social_media_funcionario_configs', function (Blueprint $table) {
            $table->id();
            $table->string("socialMediaLink");

            $table->unsignedBigInteger("FkIdFuncionario");
            $table->unsignedBigInteger("FkIdSocialMedia");

            $table->unsignedBigInteger("estadoID")->default(1);
            $table->foreign("estadoID")->references("id")->on("estados");

            $table->foreign("FkIdSocialMedia")->references("id")->on("social_media_configs");
            $table->foreign("FkIdFuncionario")->references("id")->on("funcionarios");

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
        Schema::dropIfExists('social_media_funcionario_configs');
    }
}
