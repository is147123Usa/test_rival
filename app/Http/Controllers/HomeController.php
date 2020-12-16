<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\City;

class HomeController extends Controller
{
   
    public function Processes(){
        return view('Home.Processes');
    }
    public function statistics(){
        return view('Home.statistics');
    }
    public function test(){
        //echo "testing";
       $data = City::with('country')
       ->orderBy('id','desc')
       ->get();
        return view('test.index',compact('data'));
    }
    
}
