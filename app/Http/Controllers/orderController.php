<?php

namespace App\Http\Controllers;
 
use App\Models\Setting;
 
use App\Models\Order;
use App\Models\Qutation_order_item;

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
        $items = Qutation_order_item::where('qutation_order_id',$order->qutation_id)->get();
         //dd($order);
        return view('order.show',compact('order','items'));
    }
    public function order_itms(){
        $items =  Qutation_order_item::all();
        dd($items);
        return view('order.items',compact('items'));
    }
}
