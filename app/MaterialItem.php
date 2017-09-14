<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MaterialItem extends Model
{
    protected $table = "material_item";

    public function material(){
    	return $this->belongsTo('App\Material');
    }

    public function partno(){
    	return $this->belongsTo('App\PartNo');
    }
}
