<?php

namespace App\Http\Controllers;
 
use App\Models\Setting;
 
use App\Models\Order;
use App\Models\Qutation_order_item;
use App\Models\Qutation_item;


class orderController extends Controller
{
    //
    public function index(){
        $orders = Order::all();
        //dd($orders[0]->client->id);
        return view('order.index',compact('orders'));
    }
    public function show($order_id){
        $order = Order::find($order_id);
        $setting = Setting::all();
        $items = Qutation_item::where('qutition_id',$order->qutation_id)->get();
         //dd($items);
        return view('order.show',compact('order','items'));
    }
    public function order_itms(){
        $items =  Qutation_item::all();
       // dd($items);
       // dd($items[0]->qutation_order_id);
        return view('order.items',compact('items'));
    }
}
