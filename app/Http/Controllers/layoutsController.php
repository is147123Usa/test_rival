<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class layoutsController extends Controller
{
    public function index2(){
        return view('layouts.index2');
    }
    public function index3(){
        return view('layouts.index3');
    }
   
}
