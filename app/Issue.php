<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Issue extends Model
{
    public function unit(){
    	return $this->belongsTo('App\Unit');
    }

    public function items(){
    	return $this->hasMany('App\IssueItem');
    }

}
