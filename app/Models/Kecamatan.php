<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kecamatan extends Model
{
    protected $table = 'kecamatan';
    protected $hidden = ['created_at', 'updated_at'];

    public function desaKelurahan()
    {
        return $this->hasMany('App\Models\DesaKelurahan');
    }

    public function kotaKab()
    {
        return $this->belongsTo('App\Models\KotaKab');
    }

    public function lokasiPatroli()
    {
        return $this->hasMany('App\Models\LokasiPatroli');
    }

    public function posko()
    {
        return $this->hasMany('App\Models\Posko');
    }
}
