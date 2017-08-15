<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PartNo extends Model
{
    protected $table = "item_part_no";

    public function item(){
    	return $this->belongsTo('App\Item');
    }

}
