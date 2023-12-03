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
        Schema::create('agremiados', function (Blueprint $table) {
            $table->id();
            $table->string('a_paterno');
            $table->string('a_materno');
            $table->string('nombre');
            $table->enum('sexo', ['Hombre', 'Mujer', 'Prefiero no decir']);
            $table->string('NUP', 10)->unique();
            $table->string('NUE')->unique();
            $table->string('RFC', 13)->unique();
            $table->string('NSS', 11)->unique();
            $table->date('fecha_nacimiento');
            $table->string('telefono', 10);
            $table->enum('cuota', [1, 0]);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('agremiados');
    }
};
