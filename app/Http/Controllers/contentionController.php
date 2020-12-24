<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contention;

class contentionController extends Controller
{
    //
    public function index(){
        $contention = Contention::all();
        
        return view('contention.index',compact('contention'));
    }
}
