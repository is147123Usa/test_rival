<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prove_type extends Model
{
    use HasFactory;
    protected $table = "prove_types";
    protected $fillable = ['name','name_en'];
    
}
