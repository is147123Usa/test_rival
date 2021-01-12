<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Notification;
use App\Models\User;
use Illuminate\Support\Facades\Storage;
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
        
        $imageName = '';
        if ($req->has('image')) {
            $imageName = rand(111111,999999).'.'.$req->image->extension();  
            $req->image->move(public_path('imgs'), $imageName);
            $imageName = $imageName;
        }
        
        if($req->target_users == 'allUsers'){
            
            $users= User::all();
            $qty = count($users);

            for ($i=0; $i < $qty; $i++) { 
                $noti = new Notification();
                $noti->name = $req->title;
                $noti->name_en = $req->title_en;
                $noti->body = $req->title_en;
                $noti->body_en = $req->title_en;
                $noti->user_id = $users[$i]->id;
                $noti->img = $imageName;
                $noti->save();
                //echo($users[$i]->id.'<br>');
            }
            
        }else{
                $noti = new Notification();
                $user= User::findOrFail($req->target_users);
               // $noti = new Notification();
                $noti->name = $req->title;
                $noti->name_en = $req->title_en;
                $noti->body = $req->title_en;
                $noti->body_en = $req->title_en;
                $noti->user_id = $user->id;
                $noti->img = $imageName;
                $noti->save();
        }
        
         return redirect()->to('Notifications')->with('alert', 'Status have been updated successfuly');


    }
}
