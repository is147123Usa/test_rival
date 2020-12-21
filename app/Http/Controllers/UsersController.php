<?php

namespace App\Http\Controllers;
use App\Models\Wallet;
use App\Models\User;

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

}
