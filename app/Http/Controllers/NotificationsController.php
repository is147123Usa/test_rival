<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NotificationsController extends Controller
{
    //
    public function Notifications(){
        return view('Notifications.Notifications');
    }
    public function SendNotifications(){
        return view('Notifications.SendNotifications');
    }
}
