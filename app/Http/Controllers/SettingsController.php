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
         //dd($option);
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
        $countries = Country::all();
        //dd($countries);
        return view('settings.Settings',compact('payload','countries'));
        //return view('settings.Settings'with($payload)->with($countries));
    }
    public function store(Request $req){
        //dd($req->all());
         if($req->selectv == 'country'){
            $Country = new Country();
            $Country->name = $req->name;
            $Country->name_en = $req->name_en;
            $Country->save();
        }elseif($req->selectv == 'catogery'){
            $Category = new Category();
            $Category->name = $req->name;
            $Category->name_en = $req->name_en;
            $Category->save();
        }elseif($req->selectv == 'prove') {
            $Prove_type = new Prove_type();
            $Prove_type->name = $req->name;
            $Prove_type->name_en = $req->name_en;
            $Prove_type->save();
            
        }elseif ($req->selectv == 'city') {
            $City = new City();
            $City->name = $req->name;
            $City->name_en = $req->name_en;
            $City->country_id = $req->country_id;
            $City->save();
            //$payload = City::all();
        } 
        return redirect()->back()->with('alert', 'Faild to Close contention !');



         
    }
}