<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->id();
            $table->string('password')->default(Hash::make('password'));
            $table->string('NUE')->unique();
            $table->unsignedBigInteger('id_rol');
            $table->foreign('id_rol')->references('id')->on('roles');
            $table->foreign('NUE')->references('NUE')->on('agremiados')->onDelete('cascade')->onUpdate('cascade');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
