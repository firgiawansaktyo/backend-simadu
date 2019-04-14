<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Anggota;
use App\Models\Daops;
use App\Models\AnggotaDaops;

class AnggotaController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'kategori_anggota_id' => 'required',
            'nama' => 'required',
            'no_telepon' => 'required',
            'daops_id' => 'required'
        ]);

        $data = $request->all();

        $anggota = new Anggota;
        $anggota->kategori_anggota_id = $data['kategori_anggota_id'];
        $anggota->nama = $data['nama'];
        $anggota->email= $data['email'];
        $anggota->no_telepon = $data['no_telepon'];
        $anggota->save();

        // $insertedAnggota = Anggota::where('id', $anggota->id)->first()->toArray();
        $insertedAnggota = Anggota::where('id', $anggota->id)->first();
        $daops = Daops::where('id', '=', $data['daops_id'])->get();
        if (!$daops)
        {
            return response()->json(
                array('message'=>'Daops with id '.$request->input('daops_id').' not found'), 404);
        }

        // Assign  daops to anggota
        $anggotaDaops = new AnggotaDaops();
        $anggotaDaops->anggota_id = $anggota->id;
        $anggotaDaops->daops_id = $request->input('daops_id');
        $anggotaDaops->save();

        $insertedAnggota = Anggota::with([
            'anggotaDaops.daops'
        ])
        ->where('id', $anggota->id)
        ->first();

        return response([
            'message' => 'Create anggota success.',
            // 'anggota' => $anggota
        ]);
    }

    public function list(Request $r)
    {
        if ($r->has('key'))
        {
            $data = Anggota::with(['kategoriAnggota'])
                            ->where('nama', 'ilike', '%'.$r->input('key').'%')
                            ->get();

            return response([
                'data' => $data
            ]);
        }

        $data = Anggota::with(['kategoriAnggota'])
                        ->get();
        
        return response([
            'data' => $data
        ]);
    }

    public function update(Request $request)
    {
        $this->validate($request, [
            'kategori_anggota_id' => 'required',
            'id' => 'required',
            'no_telepon' => 'required'
        ]);

        $data = $request->all();

        $anggota = Anggota::find($data['id']);

        if ($anggota == NULL) {
            return response([
                'message' => 'Anggota dengan id '.$data['id'].' tidak ditemukan.'
            ]);
        }

        $anggota->kategori_anggota_id = $data['kategori_anggota_id'];
        $anggota->nama = $data['nama'];
        $anggota->email= $data['email'];
        $anggota->no_telepon = $data['no_telepon'];
        $anggota->save();

        return response([
            'message' => 'Update anggota patroli sukses.'
        ]);
    }

    public function remove(Request $request)
    {
        $this->validate($request, [
            'id' => 'required'
        ]);

        $id = $request->all()['id'];

        $anggota = Anggota::find($id);

        if ($anggota == NULL) {
            return response([
                'message' => 'Anggota dengan id '.$id.' tidak ditemukan.'
            ]);
        }

        $anggota->delete();

        return response([
            'message' => 'Delete anggota patroli sukses.'
        ]);
    }
}
