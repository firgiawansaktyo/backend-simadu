<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Daops;
use App\Models\KotaKab;


class DaopsController extends Controller
{
    public function list(Request $request)
    {
        $data = $request->all();

        // Kalau ada ketua_id yang ingin dicari
        if($data['ketua_id']) {
            $daopsDesa = Daops::where('ketua_id', '=', $data['ketua_id'])
            ->with([
                'kotaKab.kecamatan.desaKelurahan'
            ])
            ->first();

            return response([
                'data' => $daopsDesa
            ]);
        }

        // Yang biasa aja
        $daops = Daops::with([
            'kotaKab.kecamatan.desaKelurahan',
        ])
        ->get();

        $ketua_daops = Daops::with([
            'pengguna',
        ])
        ->get();

        return response([
            'data' => [
                'daops' => $daops,
                'ketua_daops' => $ketua_daops
            ]
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'kota_kab_id' => 'required',
            'nama' => 'required'
        ]);

        $data = $request->all();

        $daops = new Daops;

        // Ini dirubah untuk disesuaikan dengan kota_kab
        $daops->kota_kab_id = $data['kota_kab_id'];
        $daops->nama = $data['nama'];
        $daops->save();

        return response([
            'message' => 'Create daops sukses.'
        ]);
    }

    public function update(Request $request)
    {
        $this->validate($request, [
            'kota_kab_id' => 'required',
            'nama' => 'required',
            'id' => 'required'
        ]);

        

        $data = $request->all();

        $daops = Daops::find($data['id']);

        if ($daops == NULL) {
            return response([
                'message' => 'Daops dengan id '.$data['id'].' tidak ditemukan.'
            ]);
        }

        $daops->kota_kab_id = $data['kota_kab_id'];
        $daops->nama = $data['nama'];
        $daops->save();

        return response([
            'message' => 'Update daops sukses.'
        ]);
    }

    public function remove(Request $request)
    {
        $this->validate($request, [
            'id' => 'required'
        ]);

        $daops = Daops::find($request->input('id'));

        if ($daops == NULL) {
            return response([
                'message' => 'Daops dengan id '.$request->input('id').' tidak ditemukan.'
            ]);
        }
        
        $daops->delete();

        return response([
            'message' => 'Delete daops sukses.'
        ]);
    }
}
