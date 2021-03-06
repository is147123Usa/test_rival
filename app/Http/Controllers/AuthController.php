<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Trader;

use Validator;


class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request){
    	$validator = Validator::make($request->all(), [
            'phone' => 'required|',
            'password' => 'required|string|min:6',
             
            
        ]);
       
        if ($validator->fails()) {
            $res = array('status' =>false ,'error'=> $validator->errors());
            return response()->json($res, 200);
        }
        
        if (! $token = auth()->attempt($validator->validated())) {
            return response()->json(['status'=>false,'error' => 'Unauthorized'], 200);
        }
        
         
            $user = User::where('id',auth()->user()->id)->first();
           //$user->id
           

            $user->player_id = $request->player_id;
            
            $user->save();
       
        return $this->createNewToken($token);
    }

    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|confirmed|min:6',
            'group_id'=>'required',
            'phone'=>'required|max:14|unique:users',
            'localization'=>'required',
            'player_id'=>'required',
            'city_id'=>'required',
            'isSuspend'=>'required'
        ]);

        if($validator->fails()){
            return response()->json($validator->errors()->toJson(), 400);
        }

        $user = User::create(array_merge(
                    $validator->validated(),
                    ['password' => bcrypt($request->password)]
                ));
        
        #12
        switch ($request->group_id) {
            case 3:
                $trader = new Trader();
                $trader->activityName = $request->activityName;
                $trader->CRN = $request->CRN;
                $trader->tax_no = $request->tax_no;
                $trader->address = $request->address;
                $trader->address_2 = $request->address_2;
                $trader->mailBox = $request->mailBox;
                $trader->account_status = $request->account_status;
                $trader->spicalizition_id = $request->spicalizition_id;
                $trader->user_id = $user->id;
                $trader->save();
                //dd($trader);
                //$payload = array('Trader'=>$trader,'user_info'=>$user);
                return response()->json(['status'=>true,'trader'=>$trader, 'user_info'=>$user],201);
                break;
            default:
                
                break;
        }
        return response()->json([
            'message' => 'User successfully registered',
            'user' => $user,
            'status'=>true
        ], 201);
    }


    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */

    public function logout() {
        auth()->logout();

        return response()->json(['message' => 'User successfully signed out']);
    }


    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        return $this->createNewToken(auth()->refresh());
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userProfile() {
        return response()->json(auth()->user());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token){
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user(),
            'status' => true
        ]);
    }

}