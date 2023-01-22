<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCategoryServicosTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('servicos_types', function (Blueprint $table) {
            
            $table->unsignedBigInteger("FK_id_servico");
            $table->unsignedBigInteger("FkIDestado");

            $table->foreign("FkIDestado")->references("id")->on("estados");
            $table->foreign("FK_id_servico")->references("id")->on("servicos");

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('servicos_types', function (Blueprint $table) {

            $table->dropColumn("FK_id_servico");
            $table->dropColumn("FkIDestado");

        });


        //
    }
}
