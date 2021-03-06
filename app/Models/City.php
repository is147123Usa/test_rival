<?php

namespace App\Models;
 
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;
    protected $table = "cities";
    protected $fillable = ['name','name_en','country_id'];
    
    public function country()
    {
      // return $this->belongsTo('App\Models\Country');
      return $this->belongsTo(Country::class);
    }

}
