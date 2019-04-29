<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Anggota;
use App\Models\Daops;
use App\Models\Pengguna;
use App\Models\AnggotaDaops;
use Auth;
use DB;

class AnggotaDaopsController extends Controller
{
    public function list()
    {
        $anggota = Anggota::with([
            'anggotaDaops.daops.kotakab.provinsi'
        ])
        ->get();

        return response([
            'anggota' => $anggota
        ]);
    }

    public function anggotaList()
    {
        // getting ketua daops ID
        $ketua = Auth::User();
        $ketua_id = $ketua->id;

        // getting anggota daops based on ketua daops id
        $anggota_daops = Daops::where('ketua_id', '=', $ketua_id)
            ->with([
                'anggotaDaops.anggota.kategoriAnggota'
            ])->get();
        
        return response([
            'anggota' => $anggota_daops
        ]);
    }

    public function assignAnggotaDaops(Request $req)
    {
        $this->validate($req, [
            'anggota_id' => 'required|numeric',
            'daops_id' => 'required|numeric'
        ]);

        // Check if anggota exist
        $anggota = Anggota::find($req->input('anggota_id'));
        if (!$anggota)
        {
            return response()->json(
                array('message'=>'Anggota with id '.$req->input('anggota_id').' not found'), 404);
        }

        // Check if daops exist
        $daops = Daops::find($req->input('daops_id'));
        if (!$daops)
        {
            return response()->json(
                array('message'=>'Daops with id '.$req->input('daops_id').' not found'), 404);
        }

        // Check if anggota already has that daops
        $anggotaDaopsExist = AnggotaDaops::where('anggota_id', $req->input('anggota_id'));
                                                    // ->where('daops_id', $req->input('daops_id'));
        if ($anggotaDaopsExist->count() > 0)
        {
            return response()->json(
                array('message'=>'anggota '.$anggota->nama.' already has daops '.$daops->nama), 
                400);
        }

        // Assign  daops to anggota
        $anggotaDaops = new AnggotaDaops();
        $anggotaDaops->anggota_id = $req->input('anggota_id');
        $anggotaDaops->daops_id = $req->input('daops_id');
        $anggotaDaops->save();

        $anggota = Anggota::with([
            'anggotaDaops.daops'
        ])
        ->where('id', $req->input('anggota_id'))
        ->first();

        return response([
            'message' => 'Assign daops to anggota success.',
            'anggota' => $anggota
        ]);
    }

    public function unassignAnggotaDaops(Request $req)
    {
        $this->validate($req, [
            'anggota_id' => 'required|numeric',
            'daops_id' => 'required|numeric'
        ]);

        // Check if anggota exist
        $anggota = Anggota::find($req->input('anggota_id'));
        if (!$anggota)
        {
            return response()->json(
                array('message'=>'anggota with id '.$req->input('anggota_id').' not found'), 404);
        }

        // Check if daops exist
        $daops = Daops::find($req->input('daops_id'));
        if (!$daops)
        {
            return response()->json(
                array('message'=>'Daops with id '.$req->input('daops_id').' not found'), 404);
        }

        // Check if anggota already has that daops
        $anggotaDaopsExist = AnggotaDaops::where('anggota_id', $req->input('anggota_id'));
                                                    // ->where('daops_id', $req->input('daops_id'));
        if ($anggotaDaopsExist->count() <= 0)
        {
            return response()->json(
                array('message'=>'Anggota '.$anggota->nama.' doesnt have daops '.$daops->nama), 
                400);
        }

        // Unassign daops from anggota
        $anggotaDaopsExist->delete();

        $anggota = Anggota::with([
            'anggotaDaops.daops'
        ])
        ->where('id', $req->input('anggota_id'))
        ->first();

        return response([
            'message' => 'Unassign daops from anggota success.',
            'anggota' => $anggota
        ]);
    }
}
