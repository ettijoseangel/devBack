<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\Models\User;

class UsuariosController extends Controller
{
    public function loginUsuario(Request $request)
    {
        $credentials = $request->only(['NUE', 'password']);

        if (!Auth::attempt($credentials)) {
            return response()->json(['message' => 'Credenciales incorrectas'], 401);
        }

        $user = $request->user();
        $id_rol = $user->id_rol;

        if ($id_rol == 1) {
            $token = $user->createToken('auth_token', ['admin'])->plainTextToken;
        } else {
            $token = $user->createToken('auth_token', ['agremiado'])->plainTextToken;
        }

        return response()->json(['token' => $token, 'Usuario' => $user], 200);
    }

    public function getUsuarios(){
        $usuario = User::all();
        return response()->json($usuario, 200);
    }

    public function newUsuario(Request $request){
        $usuario = User::create($req->all());
        return response($usuario, 200);
    }
}
