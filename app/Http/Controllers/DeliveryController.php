<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DeliveryController extends Controller
{
    public function Delivery(){
        return view('Delivery.Delivery');
    }
    public function DeliveryDetails(){
        return view('Delivery.DeliveryDetails');
    }
}
