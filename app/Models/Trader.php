<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trader extends Model
{
    use HasFactory;
    protected $table = "traders";
    protected $fillable = ['user_id','activityName','CRN','account_status','spicalizition_id','user_id'];
    
}
