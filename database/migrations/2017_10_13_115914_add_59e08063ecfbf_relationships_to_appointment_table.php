<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Add59e08063ecfbfRelationshipsToAppointmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('appointments', function(Blueprint $table) {
            if (!Schema::hasColumn('appointments', 'client_id')) {
                $table->integer('client_id')->unsigned()->nullable();
                $table->foreign('client_id', '81530_59e08061eea30')->references('id')->on('clients')->onDelete('cascade');
                }
                if (!Schema::hasColumn('appointments', 'procedure_id')) {
                $table->integer('procedure_id')->unsigned()->nullable();
                $table->foreign('procedure_id', '81530_59e0806208886')->references('id')->on('procedures')->onDelete('cascade');
                }
                
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('appointments', function(Blueprint $table) {
            
        });
    }
}
