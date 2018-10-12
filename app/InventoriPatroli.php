<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InventoriPatroli extends Model
{
    protected $table = 'inventori_patroli';

    public function inventori()
    {
        return $this->belongsTo('App\Inventori');
    }
}
