<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSocialMediaConfigsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('social_media_configs', function (Blueprint $table) {
            $table->id();
            
            $table->string("socialMediaName");
            $table->string("socialMediaDescription");
            
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
        Schema::dropIfExists('social_media_configs');
    }
}
