<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Driver extends Model
{
    use HasFactory;
    protected $table = "drivers";
    protected $fillable = [
        'cabtin_name','carNumber',
        'license_no','carType',
        'img','ssl','user_id',
        'account_status','proveType_id'
];
public function user()
{
  // return $this->belongsTo('App\Models\Country');
  return $this->belongsTo(User::class);
}
public function proveType()
{
  // return $this->belongsTo('App\Models\Country');
  return $this->belongsTo(Prove_type::class);
}

    
}
