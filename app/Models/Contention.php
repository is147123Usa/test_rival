<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contention extends Model
{
    use HasFactory;
    protected $table = "contentions";
    protected $fillable = ['title','status','sup_commendation','sup_investigtion','complain_reason','order_id','claimant_id','supervisor_id','driver_id'
];
public function order(){
    return $this->belongsTo(Order::class);
}
public function claimant(){
    return $this->belongsTo(User::class);
}
public function supervisor(){
    return $this->belongsTo(Admin::class);
}
public function driver(){
    return $this->belongsTo(Driver::class);
}

    
}
