<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use App\Provinsi;



class ProvinsiController extends Controller
{
    public function list()
    {
        return response([
            'data' => 'App\Provinsi'::all()
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required'
        ]);

        $prov_exist = Provinsi::where('nama', 'ilike', $request->input('nama'))
                                ->count();

        if ($prov_exist)
        {
            return response()
                ->json(array(
                    'message' => 'Create provinsi gagal, Nama provinsi '.$request->input('nama').' telah terdaftar.'), 
                    400);
        }

        $provinsi = new Provinsi;
        $provinsi->nama = $request->input('nama');
        $provinsi->save();

        return response([
            'message' => 'Create provinsi sukses.'
        ]);
    }

    public function resume(Request $request)
    {
        $kode = $request->input('kode_provinsi');
        $year = $request->input('tahun');

        //////////// Statistik Harian //////////////////
        // Jumlah kegiatan patroli
        $filterHarian = function ($query) use ($kode) {
            $query->where('provinsi.id', $kode)
                  ->where('tanggal_patroli', '2016-02-24');
        };
        
        $kegiatanPatroliDarat = 'App\KegiatanPatroli'::with([
                                'patroliDarat.desaKelurahan.kecamatan.kotaKab.daops.provinsi'
                            ])
                            ->whereHas('patroliDarat.desaKelurahan.kecamatan.kotaKab.daops.provinsi', $filterHarian)
                            ->get()
                            ->toArray();

        $kegiatanPatroliUdara = 'App\KegiatanPatroli'::with([
                                'patroliUdara.desaKelurahan.kecamatan.kotaKab.daops.provinsi'
                            ])
                            ->whereHas('patroliUdara.desaKelurahan.kecamatan.kotaKab.daops.provinsi', $filterHarian)
                            ->get()
                            ->toArray();

        $kegiatanPatroliDarat = (count($kegiatanPatroliDarat)) ? count($kegiatanPatroliDarat[0]['patroli_darat']) : 0;
        $kegiatanPatroliUdara = (count($kegiatanPatroliUdara)) ? count($kegiatanPatroliUdara[0]['patroli_udara']) : 0;

        // Jumlah kebakaran
        $jmlKebakaran = 'App\Pemadaman'::with([
            'patroliDarat.desaKelurahan.kecamatan.kotaKab.daops.provinsi',
            'patroliDarat.kegiatanPatroli'
        ])
        ->whereHas('patroliDarat.desaKelurahan.kecamatan.kotaKab.daops.provinsi', function ($query) use ($kode) {
            $query->where('provinsi.id', $kode);
        })
        ->whereHas('patroliDarat.kegiatanPatroli', function ($query) {
            $query->where('tanggal_patroli', '2016-02-24');
        })
        ->count();

        //////////// Statistik Tahunan //////////////////
        // Jumlah kebakaran
        $jmlKebakaranTahun = 'App\Pemadaman'::with([
            'patroliDarat.desaKelurahan.kecamatan.kotaKab.daops.provinsi',
            'patroliDarat.kegiatanPatroli'
        ])
        ->whereHas('patroliDarat.desaKelurahan.kecamatan.kotaKab.daops.provinsi', function ($query) use ($kode) {
            $query->where('provinsi.id', $kode);
        })
        ->whereHas('patroliDarat.kegiatanPatroli', function ($query) use ($year) {
            $query->whereYear('tanggal_patroli', '=', $year);
        })
        ->count();

        // Jumlah daops
        $jumlahDaops = 'App\Daops'::with([
            'provinsi'
        ])
        ->whereHas('provinsi', function ($query) use ($kode) {
            $query->where('provinsi.id', $kode);
        })
        ->count();

        return response([
            'query' => array(
                'tahun' => $year,
                'kode_provinsi' => $kode,
            ),
            'statistik_harian' => [
                'kegiatan_patroli' => (int) $kegiatanPatroliDarat + (int) $kegiatanPatroliUdara,
                'kebakaran' => $jmlKebakaran
            ],
            'statistik_tahunan' => [
                'kebakaran' => $jmlKebakaranTahun,
                'daops' => $jumlahDaops
            ]
        ]);
    }
}
