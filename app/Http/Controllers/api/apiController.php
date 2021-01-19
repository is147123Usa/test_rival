<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Driver;
use App\Models\Category;
use App\Models\User;
use App\Models\Setting;

use App\Models\Trader;
use App\Models\Country;
use App\Models\City;
use App\Models\Qutation;
use App\Models\Qutation_order_item;
use App\Models\Qutation_item;

use DB;

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
        $driver->status = $request->status;
        $driver->proveType_id = $request->proveType_id;
        $driver->save();
        
        return response()->json(['status'=>true,'payload' => $driver],200);
    }
    public function getCatogery(){
        $catogeries = Category::all();
        return response()->json($catogeries,200);
    }
    public function addQutstionorder(Request $request){

        $qutation_ord = new Qutation_order();
        $qutation_ord->payMethod = $request->payMethod ;
        $qutation_ord->client_id = $request->client_id ;
        $qutation_ord->cat_id = $request->cat_id ;
        //$arr = array(['name'=>1,'qty'=>1,'item_desc'=>'not yet'],['name'=>1,'qty'=>1,'item_desc'=>'not yet']);
        $qutation_ord->save();

        foreach($request->items as $value){
            $item = new Qutation_order_item();
            $item->item_desc = $value['item_desc'];
            $item->name = $value['name'];
            $item->qty = $value['qty'];
            $item->qutation_order_id = $qutation_ord->id;
            $item->save();
        } 
        return response()->json(['status'=>true],200);
    }
    public function inbox(Request $request){
       
        $group_id = User::find($request->user_id);
        
        if($group_id){
            if($group_id->group_id == 2){
                $res = qutation_order::where('client_id',$request->user_id)->with('cat')->get();
                return response()->json($res,200);
            }
            if($group_id->group_id == 3){
              
                $trader_id = Trader::where('user_id',$request->user_id)->get();
                             
                 $traderQutations = "SELECT qutation_orders.* ,categories.name,name_en,users.name as client_name FROM qutation_orders JOIN categories ON categories.id = qutation_orders.cat_id JOIN users ON users.id = qutation_orders.client_id WHERE qutation_orders.cat_id =".$trader_id[0]->spicalizition_id."";//Qutation::where('trader_id','=',$trader_id)->get();
                 $traderQutations = DB::select($traderQutations);
                 $sql = "SELECT qutation_orders.* ,categories.name,name_en FROM qutation_orders JOIN categories ON categories.id = qutation_orders.cat_id WHERE qutation_orders.client_id =".$request->user_id."";
                $res = DB::select($sql);
                $payload = array('res'=>$res,'traderQutation'=>$traderQutations);
                return response()->json($payload,200);             
            }
        }else{
            return response()->json(['msg'=>'Didnt find user credntiolas'],200);
        }
    }
    public function getItems(Request $request){
        $payload = qutation_order_item::where('qutation_order_id',$request->qutation_id)->get();
        return response()->json($payload,200);
    }
    public function getCities(){
        $City = City::all();
        $Country = Country::all();
        $payload  = array('city' => $City,'country'=>$Country );
        return response()->json(['status'=>true,'payload'=>$payload],200);
    }
    public function addQutation(Request $req){
        $qutation = new Qutation();
         if($req->includeDelivery == 0){
            $qutation->delivery_fee = 18.00;
         }
        $qutation->sub_total = $req->sub_total;
        
        $qutation->includeDelivery = $req->includeDelivery;
        $rival_fee = Setting::where('name','rival')->get();
        if($req->has('items')){
            $items = $req->items;
            $item = $items[0] ;
            $qutation->qutation_order_id = $item['qutation_order_item_id'];
        }else{

        }
        $trader_id= Trader::where('user_id',$req->trader_id)->get();
        $trader_id = $trader_id[0];
        $trader_id = $trader_id->id;
        
        $qutation->trader_id = $trader_id;
        $qutation->rival_fees = ($req->sub_total* $rival_fee['0']->valuee);
        if($qutation->save()){
             //return response()->json($qutation->id,200);
            $count = count($items);
            for ($i=0; $i < $count; $i++) { 
                $temp = $items[$i];
               
               $stroeItem = new Qutation_item();

               $stroeItem->price = $temp['price'];
               $stroeItem->qty = $temp['qty'];
               $stroeItem->img = 'kk';//$temp['img'];
               $stroeItem->note = $temp['note'];
               $stroeItem->item_desc = $temp['note'];

               $stroeItem->qutition_id = $qutation->id;
               //$stroeItem->qutation_order_item_id = '30';
                $stroeItem->save();
            }
           
        }else{

        }
        
    }
    public function getQutation_offers(Request $request){

        $sql = "SELECT *,traders.activityName FROM `qutations` JOIN traders ON traders.id = qutations.trader_id WHERE qutations.qutation_order_id=".$request->q_id."";
        $payload = DB::select($sql);//Qutation::where('qutation_order_id',$request->q_id)->get();
        return response()->json($payload,200);
    }
}
