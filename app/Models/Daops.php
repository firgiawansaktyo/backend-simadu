<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Daops extends Model
{
    protected $table = 'daops';
    protected $hidden = ['created_at', 'updated_at'];

    // public function kotaKab()
    // {
    //     return $this->hasMany('App\Models\KotaKab');
    // }

    public function kotaKab()
    {
        return $this->belongsTo('App\Models\KotaKab');
    }

    public function anggotaDaops()
    {
        return $this->hasMany('App\Models\AnggotaDaops');
    }

    public function pengguna()
    {
        return $this->hasOne('App\Models\Pengguna', 'id', 'ketua_id');
    }
}
