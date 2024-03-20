<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    protected $fillable = [
        'rate',
        'notes',
        'average_rating',
        'soluation_id',
        'user_id',
    ];



    public function soluation()
    {
        return $this->belongsTo(Soluation::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
