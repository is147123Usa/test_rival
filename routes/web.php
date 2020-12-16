<?php
use App\http\Controllers\layoutsController;
use App\http\Controllers\HomeController;
use App\http\Controllers\WalletController;
use App\http\Controllers\UsersController;
use App\http\Controllers\SellersController;
use App\http\Controllers\MoneyTransferController;
use App\http\Controllers\ShowroomController;
use App\http\Controllers\QuotationController;
use App\http\Controllers\DeliveryController;
use App\http\Controllers\DisputesController;
use App\http\Controllers\ContactController;
use App\http\Controllers\NotificationsController;

use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
 Route::get('test',[HomeController::class,'test']);

Route::get('',[HomeController::class,'Processes']);
Route::get('/index2',[layoutsController::class,'index2']);
//Route::get('/index3',[layoutsController::class,'index3']);
Route::get('/statistics',[HomeController::class,'statistics']);
Route::get('/Processes',[HomeController::class,'Processes']);
//Wallet section
Route::get('/Wallet',[WalletController::class,'Wallet']);
Route::get('/Details',[WalletController::class,'Details']);
Route::get('/MoneyTransferWD',[WalletController::class,'MoneyTransferWD']);
//end Wallet section
//user section
Route::get('/login',[UsersController::class,'login']);
Route::get('/Register',[UsersController::class,'Register']);
//Route::post('/Register',[UsersController::class,'Register']);
Route::get('/Users',[UsersController::class,'Users']);
Route::get('/UsersDetails',[UsersController::class,'UsersDetails']);
Route::get('/UserWallet',[UsersController::class,'UserWallet']);
Route::get('/UserDeals',[UsersController::class,'UserDeals']);
//end user section
// invoice section
Route::get('/UserInvoices',[UsersController::class,'UserInvoices']);
Route::get('/invoicePrint',[UsersController::class,'invoicePrint']);
//end invoice section

//sellers section
Route::get('/Sellers',[SellersController::class,'Sellers']);
Route::get('/SellerDetails',[SellersController::class,'SellerDetails']);
Route::get('/SellerWallet',[SellersController::class,'SellerWallet']);
Route::get('/SellerDeals',[SellersController::class,'SellerDeals']);
Route::get('/SellerInvoices',[SellersController::class,'SellerInvoices']);
Route::get('/SellerInvoicePrint',[SellersController::class,'SellerInvoicePrint']);
//end sellers section
Route::get('/MoneyTransfer',[MoneyTransferController::class,'MoneyTransfer']);
Route::get('/Showroom',[ShowroomController::class,'Showroom']);
//Quotato section
Route::get('/Quotaton',[QuotationController::class,'Quotaton']);
Route::get('/QuotatonDetais',[QuotationController::class,'QuotatonDetais']);
//end Quotato section
// Delivery section
Route::get('/Delivery',[DeliveryController::class,'Delivery']);
Route::get('/DeliveryDetails',[DeliveryController::class,'DeliveryDetails']);
//end Delivery section
// Disputes section
Route::get('/Disputes',[DisputesController::class,'Disputes']);
Route::get('/DisputesDetails',[DisputesController::class,'DisputesDetails']);
//end Disputes section
 // contact section
Route::get('/Contact',[ContactController::class,'Contact']);
Route::get('/ContactDetails',[ContactController::class,'ContactDetails']);
 //end contact section
 //notification section
Route::get('/Notifications',[NotificationsController::class,'Notifications']);
Route::get('/SendNotifications',[NotificationsController::class,'SendNotifications']);
 //end notification section
