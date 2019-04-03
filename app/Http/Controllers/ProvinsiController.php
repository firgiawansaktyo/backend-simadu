<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use App\Models\Provinsi;
use App\Models\KegiatanPatroli;
use App\Models\Pemadaman;
use App\Models\Daops;



class ProvinsiController extends Controller
{
    public function list()
    {
        $provinsis = Provinsi::with([
            'daops'
        ])->get();

        return response([
            'data' => $provinsis
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

    public function update(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'id' => 'required'
        ]);

        $data = $request->all();

        $provinsi = Provinsi::find($data['id']);
        $provinsi->nama = $data['nama'];
        $provinsi->save();

        return response([
            'message' => 'Update provinsi sukses.'
        ]);
    }

    public function remove(Request $request)
    {
        $this->validate($request, ['id'=>'required']);

        $provinsi = Provinsi::find($request->input('id'));
        $provinsi->delete();

        return response([
            'message' => 'Delete provinsi sukses.'
        ]);
    }

    public function resume(Request $request)
    {
        $this->validate($request, [
            'kode_provinsi' => 'required',
            'tahun' => 'required'
        ]);


        $kode = $request->input('kode_provinsi');
        $year = $request->input('tahun');
        $today = date('Y-m-d');

        $provinsi = Provinsi::find($kode);
        if ($provinsi == NULL) {
            return response([
                'message' => 'Provinsi dengan kode provinsi '.$kode.' tidak ditemukan.'
            ]);
        }

        //////////// Statistik Harian //////////////////
        // Jumlah kegiatan patroli
        $filterHarian = function ($query) use ($kode, $today) {
            $query->where('provinsi.id', $kode)
                  ->where('tanggal_patroli', $today);
        };
        
        $kegiatanPatroliDarat = KegiatanPatroli::with([
                                'lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi',
                                'lokasiPatroli.patroliDarat'
                            ])
                            ->whereYear('tanggal_patroli', $year)
                            ->whereHas('lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi', function ($query) use ($kode) {
                                $query->where('provinsi.id', $kode);
                            })
                            ->get();

        $kegiatanPatroliUdara = KegiatanPatroli::with([
                                'lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi',
                                'lokasiPatroli.patroliUdara'
                            ])
                            ->whereYear('tanggal_patroli', $year)
                            ->whereHas('lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi', function ($query) use ($kode) {
                                $query->where('provinsi.id', $kode);
                            })
                            ->get();
        
        $countPatroliDaratHarian = 0;
        if ($kegiatanPatroliDarat)
        {
            $kegiatanPatroliDarat = $kegiatanPatroliDarat->toArray();
            foreach($kegiatanPatroliDarat as $pd)
            {
                foreach($pd['lokasi_patroli'] as $pd2)
            {
                // echo $pd2['patroli_darat']['aktivitas_masyarakat'];
                if (!empty($pd2['patroli_darat']))
                    $countPatroliDaratHarian++;
                }
            }
        }
        

        $countPatroliUdaraHarian = 0;
        if ($kegiatanPatroliDarat)
        {
            $kegiatanPatroliUdara = $kegiatanPatroliUdara->toArray();
            foreach($kegiatanPatroliUdara as $pu)
            {
                foreach($pd['lokasi_patroli'] as $pu2){
                if (!empty($pu2['patroli_udara']))
                    $countPatroliUdaraHarian++;
                }
            }
        }
        // return response ($countPatroliUdaraHarian);
        // Jumlah kebakaran
        $jmlKebakaran = KegiatanPatroli::with([
            'lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi',
            'lokasiPatroli.patroliDarat.Pemadaman'
        ])
        ->whereHas('lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi', function ($query) use ($kode) {
            $query->where('provinsi.id', $kode);
        })
        // ->whereHas('patroliDarat.kegiatanPatroli', function ($query) use ($today) {
        //     $query->where('tanggal_patroli', $today);
        // })
        ->whereYear('tanggal_patroli', $year)
        ->count();
        // ->get();


        // //////////// Statistik Tahunan //////////////////
        // Jumlah kebakaran
        $jmlKebakaranTahun = KegiatanPatroli::with([
            'lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi',
            'lokasiPatroli.patroliDarat.Pemadaman'
        ])
        ->whereHas('lokasiPatroli.desaKelurahan.kecamatan.kotaKab.daops.provinsi', function ($query) use ($kode) {
            $query->where('provinsi.id', $kode);
        })
        // ->whereHas('patroliDarat.kegiatanPatroli', function ($query) use ($year) {
        //     $query->whereYear('tanggal_patroli', '=', $year);
        // })
        ->whereYear('tanggal_patroli', $year)
        ->count();
        // ->get();
                

        // Jumlah daops
        $jumlahDaops = Daops::with([
            'provinsi'
        ])
        ->whereHas('provinsi', function ($query) use ($kode) {
            $query->where('provinsi.id', $kode);
        })
        ->count();
        // return response ($jumlahDaops);

        return response([
            'query' => array(
                'tahun' => $year,
                'kode_provinsi' => $kode,
            ),
            'statistik_harian' => [
                'kegiatan_patroli' => $countPatroliDaratHarian + $countPatroliUdaraHarian,
                'kebakaran' => $jmlKebakaran
            ],
            'statistik_tahunan' => [
                'kebakaran' => $jmlKebakaranTahun,
                'daops' => $jumlahDaops
            ]
        ]);
    }
}
