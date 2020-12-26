<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    use HasFactory;
    protected $table = "notifiations";
    protected $fillable = ['name','name_en','user_id','img','body','body_en'];
    public function user()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(User::class);
    }
}
