<?php

namespace App\Http\Controllers;
use App\Models\Wallet;
use App\Models\User;
use App\Models\Trader;
use App\Models\Order;
use App\Models\Driver;
use App\Models\Qutation;
use App\Models\Image;


use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index(){
        $users = Wallet::all();
      
        return view('Users.index',compact('users'));
    }
    public function show($user_id){
        $user = User::find($user_id);
         //  dd( $users);
        return view('Users.show',compact('user'));
    }

    public function login(){
        return view('/uath.login');
    }
    public function Register(){
        
        return view('/uath.Register');
    }
    public function Users(){
       // return view('/Users.Users');
       return view('/Users.Users');
    }
    public function UsersDetails(){
        return view('/Users.UsersDetails');
    }
    public function UserWallet(){
        return view('/Users.UserWallet');
    }
    public function UserDeals(){
        return view('/Users.UserDeals');
    }
    public function UserInvoices(){
        return view('/Users.UserInvoices');
    }
    public function invoicePrint(){
        return view('/Users.invoicePrint');
    }
    public function traders(){
        $traders = Trader::all();
       // dd($traders);
        return view('Users.traders.index',compact('traders'));
    }
    public function show_t($trader_id){
        $trader = Trader::find($trader_id);
        $order_qty = Order::where('trader_id',$trader_id)->get();
        $drivers_quntity = Driver::where('trader_id',$trader_id)->get();
        $total_qutations = Qutation::where('trader_id',$trader_id)->get();
        $statica = array('order_qty'=>count($order_qty),'drivers_quntity'=>count($drivers_quntity),'total_qutations'=>count($total_qutations));
        //dd($statica);
        return view('users.traders.show',compact('trader','statica'));
    }
    public function status($trader_id,$status){
        //dd($trader_id.'/'.$status);
        $trader = Trader::find($trader_id);
        $trader->status = $status;
        if($trader->save()){
            return redirect()->to('Trader/'.$trader_id)->with('alert', 'Account Status Has been updated successfuly!');
        }else{
            return redirect()->back()->with('alert', 'Faild to Close contention !');
        }
    }
    public function driver(){
        $drivers = Driver::all();
        return view('Users.drivers.index',compact('drivers'));
    }
    public function driver_show($driver_id){
        $driver = Driver::find($driver_id);
        $imges = Image::where('driver_id',$driver_id)->first();
         
        return view('Users.drivers.show',compact('driver','imges'));
    }

}
