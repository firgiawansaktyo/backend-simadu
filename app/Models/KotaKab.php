<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KotaKab extends Model
{
    protected $table = 'kota_kab';
    protected $hidden = ['created_at', 'updated_at'];

    public function kecamatan()
    {
        return $this->hasMany('App\Models\Kecamatan');
    }

    public function daops()
    {
        return $this->hasMany('App\Models\Daops');
    }

    public function provinsi()
    {
        return $this->belongsTo('App\Models\Provinsi');
    }
}
