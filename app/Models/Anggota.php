<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Anggota extends Model
{
    protected $table = 'anggota';
    protected $hidden = ['created_at', 'updated_at'];


    public function kategoriAnggota()
    {
        return $this->belongsTo('App\Models\KategoriAnggota');
    }

    public function anggotaPatroli()
    {
        return $this->hasMany('App\Models\AnggotaPatroli');
    }

    public function anggotaDaops()
    {
        return $this->hasOne('App\Models\AnggotaDaops');
    }


}
