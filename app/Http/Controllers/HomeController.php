<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\City;
use App\Models\User;
use App\Models\Category;
use App\Models\Qutation;
use App\Models\trader;
use App\Models\Driver;
use App\Models\Prove_type;
use App\Models\Notification;
use App\Models\Operation_record;
use App\Models\Qutation_order;



class HomeController extends Controller
{
    public function Processes(){
        return view('Home.Processes');
    }
    public function statistics(){
        return view('Home.statistics');
    }
    public function test(){
        $data = Qutation_order::all();
        return view('test.index',compact('data'));
    }
}
