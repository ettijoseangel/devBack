<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class agremiados extends Model
{
    use HasFactory;

    // Relación de roles con usuarios
     public function users(){
        return $this->hasMany(User::class);
    }

    protected $fillable = [
        'a_paterno',
        'a_materno',
        'nombre',
        'sexo',
        'NUP',
        'NUE',
        'RFC',
        'NSS',
        'fecha_nacimiento',
        'telefono',
        'cuota'
    ];

}
