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
    
}
