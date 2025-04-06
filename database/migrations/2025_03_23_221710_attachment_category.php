<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('attachment_category', function (Blueprint $table) {
            $table->id();
            $table->string('attachment_id');
            $table->foreignId('content_category_id');
            $table->timestamps();
                
            // Prevent duplicate entries
            $table->unique(['attachment_id', 'content_category_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('attachment_category');
    }
};
