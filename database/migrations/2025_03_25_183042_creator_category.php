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
        Schema::create('creator_category', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->foreignId('creator_category_id');
            $table->timestamps();
                
            // Prevent duplicate entries
            $table->unique(['user_id', 'creator_category_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('creator_category');
    }
};
