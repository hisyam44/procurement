<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Request extends Model
{
    public function purchase(){
    	return $this->belongsTo('\App\Purchase');
    }
    public function part_no(){
    	return $this->belongsTo('\App\PartNo');
    }
}
