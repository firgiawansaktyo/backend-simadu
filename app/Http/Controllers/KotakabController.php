<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KotaKab;

class KotakabController extends Controller
{
    public function list(Request $request, $prov_id = null)
    {
        $data = $request->all();
        if($prov_id) {
            $kotaKab = KotaKab::where('provinsi_id', $prov_id)->get();
            return response([
                'data' => $kotaKab
            ]);
        }

        if($data['kab_id']) {
            $kotaKab = KotaKab::with([
                'kecamatan.desaKelurahan'
            ])
            ->where('id', $data['kab_id'])
            ->get();
            
            return response([
                'data' => $kotaKab
            ]);
        }
        
        $kotakab = KotaKab::get();

    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'provinsi_id' => 'required',
            'nama' => 'required'
        ]);

        $data = $request->all();

        $kotakab = new KotaKab;
        $kotakab->provinsi_id = $data['provinsi_id'];
        $kotakab->nama = $data['nama'];
        $kotakab->save();

        return response([
            'message' => 'Create kotakab sukses.'
        ]);
    }
    
    public function update(Request $request)
    {
        $this->validate($request, [
            'provinsi_id' => 'required',
            'nama' => 'required',
            'id' => 'required'
        ]);

        $data = $request->all();

        $kotakab = KotaKab::find($data['id']);
        $kotakab->provinsi_id = $data['provinsi_id'];
        $kotakab->nama = $data['nama'];
        $kotakab->save();

        return response([
            'message' => 'Update kotakab sukses.'
        ]);
    }

    public function remove(Request $request)
    {
        $this->validate($request, ['id' => 'required']);

        $kotakab = KotaKab::find($request->input('id'));
        $kotakab->delete();

        return response([
            'message' => 'Delete kota kab sukses.'
        ]);
    }
}
