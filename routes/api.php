<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsuariosController;
use App\Http\Controllers\AgremiadosController;
use App\Http\Controllers\SolicitudesController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::controller(AgremiadosController::class)->group(function (){
    Route::post('crearAgremiado', 'newAgremiado');
    Route::patch('actualizarAgremiado/{id}', 'updateAgremiado');
    Route::get('obtenerAgremiados', 'getAgremiado');
    Route::delete('eliminarAgremiado/{id}', 'deleteAgremiadoById');
});

Route::controller(SolicitudesController::class)->group(function () {
    Route::get('obtenerSolicitudes', 'getSolicitud');
    Route::post('nuevaSolicitud', 'newSolicitud');
    Route::patch('actualizarSolicitud/{id}', 'updateSolicitud');
    Route::delete('eliminarSolicitud/{id}', 'deleteSolicitudById');
});

Route::controller(UsuariosController::class)->group(function () {
    Route::get('usuarios', 'getUsuarios');
    Route::post('login','loginUsuario');
});
