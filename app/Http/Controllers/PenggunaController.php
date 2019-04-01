<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengguna;
use App\Models\LevelAkses;
use App\Models\HakAkses;
use App\Models\Role;
use App\Models\RoleUser;

class PenggunaController extends Controller
{
    public function list()
    {
        return response([
            'data' => Pengguna::all()
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'email' => 'required',
            'password' => 'required',
            'role_id' => 'required'
        ]);

       $data = $request->all();
       
       $pengguna = new Pengguna;
       $pengguna->nama = $data['nama'];
       $pengguna->email = $data['email'];
       $pengguna->password = app('hash')->make($data['password']);
       $pengguna->save();

       $insertedPengguna = Pengguna::where('id', $pengguna->id)->first();

        // Check role exist
        $role = Role::where('id', $request->input('role_id'))->first();
        if (!$role)
        {
            return response()->json(
                array('message'=>'No role found'), 404);
        }

        // Assign role to user
        $insertedPengguna->attachRole($role);

        if($insertedPengguna->hasRole($role->name))
        {
            $insertedPengguna = Pengguna::with([
                'roleUser.role'
            ])
            ->where('id', $pengguna->id)
            ->first();

            // return response([
            //     'message' => 'Assign role to user success.',
            //     // 'user' => $pengguna
            // ]);
        }

       return response([
           'message' => 'Create pengguna sukses.'
       ]);
    }

    public function remove(Request $request)
    {
        $this->validate($request, [
            'id' => 'required'
        ]);

        $id = $request->all()['id'];

        $pengguna = Pengguna::find($id);
        $pengguna->delete();

        return response([
            'message' => 'Delete pengguna sukses.'
        ]);
    }

    public function update(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'email' => 'required',
            'password' => 'required',
            'id' => 'required'
        ]);

        $data = $request->all();

        $pengguna = Pengguna::find($data['id']);
        $pengguna->nama = $data['nama'];
        $pengguna->email = $data['email'];
        $pengguna->password = app('hash')->make($data['password']);
        $pengguna->save();

        return response([
            'message' => 'Update pengguna sukses.'
        ]);
    }
}
