<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('category_detail', function (Blueprint $table) {
            $table->id();
            $table->foreignId('category_id')->constrained('category')->onDelete('cascade')->onUpdate('cascade');
            $table->string('title');
            $table->string('image');
            $table->text('description');
            $table->foreignId('writer_id')->constrained('writer')->onDelete('cascade')->onUpdate('cascade');
            $table->text('date');
            $table->integer('rating');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('category_detail');
    }
};
