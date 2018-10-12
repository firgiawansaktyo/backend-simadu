<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vegetasi extends Model
{
    protected $table = 'vegetasi';

    public function kondisiVegetasi()
    {
        return $this->hasMany('App\KondisiVegetasi');
    }
}
