<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $guarded = [];
    use HasFactory;

    public function convertedvideos()
    {
        return $this->hasMany('App\Models\Convertedvideo');
    }
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function part()
    {
        return $this->belongsTo('App\Models\Part');
    }


    public function comments() {
        return $this->hasMany('App\Models\Comment');
    }
}

