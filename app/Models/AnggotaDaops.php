<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AnggotaDaops extends Model
{
    protected $table = 'anggota_daops';
    protected $hidden = ['created_at', 'updated_at'];

    public function anggota()
    {
        return $this->belongsTo('App\Models\Anggota');
    }

    public function daops()
    {
        return $this->belongsTo('App\Models\Daops');
    }
}
