<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Notification;
use App\Models\User;
use Storage;
class NotificationsController extends Controller
{
    //
    public function index(){
        $notifications = Notification::all();
        //dd($notification[0]->name);
        return view('Notifications.index',compact('notifications'));
    }
    public function SendNotifications(){

        return view('Notifications.SendNotifications');
    }
    public function push(Request $req){
        if ($req->hasFile('image')) {
            //  Let's do everything here
        
        }
        if($req->target_users == 'allUsers'){
            $users= User::all();
            $qty = count($users);
            //dd($qty);
            for ($i=0; $i < $qty; $i++) { 
                $noti = new Notification();
                $noti->name = $req->title;
                $noti->name_en = $req->title_en;
                $noti->body = $req->title_en;
                $noti->body_en = $req->title_en;
                $noti->user_id = $users[$i]->id;
                
                if ($req->has('image')) {
                    $imgName = 'img'.rand(11111111,99999999);
                    $noti->img = Storage::put('public/imgs/' . $imgName, $req->file('image'));
                }
                $noti->save();
            }
        }else{
                $user= User::findOrFail($req->target_users);
                $noti = new Notification();
                $noti->name = $req->title;
                $noti->name_en = $req->title_en;
                $noti->body = $req->title_en;
                $noti->body_en = $req->title_en;
                $noti->user_id = $user->id;
                $noti->img = $req->img;
                $noti->save();
        }
        
        return redirect()->back()->with('alert', 'Status have been updated successfuly');


    }
}
