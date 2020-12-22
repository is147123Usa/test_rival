<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qutation_report extends Model
{
    use HasFactory;
    protected $table = "qutation_reports";
    protected $fillable = ['reason','sender_id','compain_sender_id','qutation_id'];
   
    public function sender()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Trader::class);
    }
    public function compain_sender()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(User::class);
    }
    public function qutation()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Qutations::class);
    }
}
