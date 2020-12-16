<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactForm extends Model
{
    use HasFactory;
    protected $table = "contact_forms";
    protected $fillable = ['status','body','reply','sender_id'];
    public function sender(){
        return $this->belongsTo(User::class);
    }

}
