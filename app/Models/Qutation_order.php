<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qutation_order extends Model
{
    use HasFactory;
    protected $table = "admins";
    protected $fillable = ['client_id','qutastion_status','cat_id','payMethod'];
   
    public function user()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(User::class);
    }
    public function category()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Category::class);
    }
}
