<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Country;
use App\Models\City;
use App\Models\Category;
use App\Models\Prove_type;

class SettingsController extends Controller
 
{
    public function Settings($option){ 
       // dd($option);
        if($option == 'country'){
            $payload = Country::all();
        }elseif($option == 'catogery'){
            $payload = Category::all();
        }elseif($option == 'proveType') {
            $payload = Prove_type::all();
        }elseif ($option == 'city') {
            $payload = City::all();
        }else{
            $payload = Country::all();
        }
       
        return view('settings.Settings',compact('payload'));
    }
}