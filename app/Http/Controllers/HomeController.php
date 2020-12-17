<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\City;
use App\Models\User;
use App\Models\Category;
use App\Models\Qutation;
use App\Models\Qutation_item;
use App\Models\trader;
<<<<<<< HEAD
use App\Models\Admin;
use App\Models\ContactForm;
use App\Models\Contention;
use App\Models\Delivery_offer;

=======
use App\Models\Wallet;
use App\Models\Driver;
use App\Models\Prove_type;
use App\Models\Notification;
use App\Models\Operation_record;
use App\Models\Qutation_order;
use App\Models\Qutation_order_item;
>>>>>>> 0ffb92a85e2d41abd96d658ce60dec2ee6f771c2




class HomeController extends Controller
{
    public function Processes(){
        return view('Home.Processes');
    }
    public function statistics(){
        return view('Home.statistics');
    }
    public function test(){
<<<<<<< HEAD
        //echo "testing";
        $data = Delivery_offer::all();

        //dd(data);
=======
        $data = Qutation_item::all();
>>>>>>> 0ffb92a85e2d41abd96d658ce60dec2ee6f771c2
        return view('test.index',compact('data'));
    }
}
