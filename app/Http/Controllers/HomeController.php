<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\City;

use App\Models\User;
use App\Models\Category;
use App\Models\Qutation;
use App\Models\trader;
use App\Models\Admin;
use App\Models\ContactForm;
use App\Models\Contention;
use App\Models\Delivery_offer;





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
        $data = Delivery_offer::all();

        //dd(data);
        return view('test.index',compact('data'));
    }
    
}
