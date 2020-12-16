<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\City;

use App\Models\User;
use App\Models\Category;
use App\Models\Qutation;

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
        $data = Qutation::all();
        
        return view('test.index',compact('data'));
    }
    
}
