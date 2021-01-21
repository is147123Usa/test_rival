<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\api\apiController;
use App\Models\User;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/register/driver', [apiController::class, 'register_driver']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user-profile', [AuthController::class, 'userProfile']);
    Route::get('/getCatogery', [apiController::class, 'getCatogery']);
    Route::post('/addQutstionorder', [apiController::class, 'addQutstionorder']);
    Route::post('/user/inbox', [apiController::class, 'inbox']);
    Route::post('/inbox', [apiController::class, 'inbox']);
    Route::get('/getCities', [apiController::class, 'getCities']);
    Route::post('/addQutation', [apiController::class, 'addQutation']);
    Route::post('/getQutation_offers', [apiController::class, 'getQutation_offers']);
    Route::post('/user/getItems', [apiController::class, 'getItems']);
    Route::post('/ItemQutations', [apiController::class, 'ItemQutations']);
    Route::post('/RequestDeliver', [apiController::class, 'RequestDeliver']);
    
    Route::post('/SendToDriver', [apiController::class, 'SendToDriver']);

});
