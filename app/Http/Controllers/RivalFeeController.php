<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Setting;

class RivalFeeController extends Controller
{
    //
    public function RivalFee(){
    
    
   
     $rival_tax = Setting::all();
     
     foreach($rival_tax as $value){
        if($value->name == 'rival_tax'){
            $fee = $value->valuee;
            $id = $value->id;
        }
     }
     $data = array('rival_tax'=>$fee,'id'=>$id);
     //dd($data);
     return view('control.RivalFee',compact('data'));
    }
    public function update(Request $req,$fees_id){
        $fees = Setting::findOrFail($fees_id);
        $fees->valuee = $req->rival_fees;
        $fees->save();
        return redirect()->back()->with('alert', 'Done successfuly!');

    }
}
