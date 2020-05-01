<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsTable extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create( 'jobs', function ( Blueprint $table ) {
            $table->bigIncrements( 'id' );
            $table->string( 'title', '150' );
            $table->text( 'description' )->nullable();
            $table->enum( 'status', ['Inactive', 'Active'] )->default( 'Active' );
            $table->unsignedBigInteger( 'create_by' );
            $table->foreign( 'create_by' )->references( 'id' )->on( 'users' );
            $table->timestamps();
            $table->softDeletes();
        } );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists( 'jobs' );
    }
}
