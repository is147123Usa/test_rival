<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Driver;
use App\Models\Category;
use App\Models\User;
use App\Models\Trader;
use App\Models\Qutation;


use App\Models\Qutation_order;


class apiController extends Controller
{
    //
    public function register_driver(Request $request){
        $driver = new Driver();
        $driver->cabtin_name = $request->cabtin_name;
        $driver->carNumber = $request->carNumber;
        $driver->license_no = $request->license_no;
        $driver->carType = $request->carType;
        $driver->ssl = $request->ssl;
        $driver->trader_id = $request->trader_id;
        $driver->user_id = $request->user_id;
        $driver->account_status = $request->account_status;
        $driver->proveType_id = $request->proveType_id;
        $driver->save();
        
        return response()->json(['status'=>true,'payload' => $driver],200);
    }
    public function getCatogery(){
        $catogeries = Category::all();
        return response()->json(['payload'=>$catogeries],200);
    }
    public function addQutstionorder(Request $request){
        return response()->json(count($request->items),200);

        $qutation_ord = new Qutation_order();
        $qutation_ord->payMethod = $request->payMethod ;
        $qutation_ord->client_id = $request->client_id ;
        $qutation_ord->cat_id = $request->cat_id ;
        //$arr = array(['name'=>1,'qty'=>1,'item_desc'=>'not yet'],['name'=>1,'qty'=>1,'item_desc'=>'not yet']);

        $qutation_ord->save();

    }
    public function inbox(Request $request){
        
        $group_id = User::find($request->user_id);
      
        if($group_id){
            if($group_id->group_id == 2){
                $res = qutation_order::where('client_id',$request->user_id)->get();
            }
            if($group_id->group_id == 3){
              
                $trader_id = Trader::where('user_id',$request->user_id)->get();
               
                if(count($trader_id)> 0){
                    
                    $trader_id = $trader_id[0]->id;
                    
                    $traderQutations = Qutation::where('trader_id','=',$trader_id)->get();
                    dd($trader_id);
                
                }
                $res = qutation_order::where('client_id',$request->user_id)->get();
                

             
            }
            //return response()->json($res,200);
        }else{
            return response()->json(['msg'=>'Didnt find user credntiolas'],200);
        }
        //return response()->json($res,200);
    }
}
