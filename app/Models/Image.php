<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;
    protected $table = "images";
    protected $fillable = [
        'avatar','identitiyProve_driver',
        'licesnse_image','carImage',
        'plant_no',
        'identitiyProve_car','driver_id', 
];
public function driver()
{
  // return $this->belongsTo('App\Models\Country');
  return $this->belongsTo(Driver::class);
}
}
