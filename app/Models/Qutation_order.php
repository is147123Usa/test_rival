<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qutation_order extends Model
{
    use HasFactory;
    protected $table = "qutation_orders";
    protected $fillable = ['qutastion_status','cat_id','payMethod','client_id','Status'];
   
    public function client()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(User::class);
    }
    public function cat()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Category::class);
    }
}
