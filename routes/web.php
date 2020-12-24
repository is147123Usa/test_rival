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
use App\http\Controllers\invoiceController;
use App\http\Controllers\SettingsController;
use App\http\Controllers\CitySettingsController;
use App\http\Controllers\qutactionOrderController;
use App\http\Controllers\RivalFeeController;
use App\http\Controllers\orderController;
use App\http\Controllers\contentionController;

use Illuminate\Support\Facades\Route;
// Ashraf Imports






//
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
//Ashraf Routes
Route::get('wallet_invoices/{user_id}',[invoiceController::class,'wallet_invoices']);
Route::get('Invoice/{order_id}',[invoiceController::class,'invoice']);
Route::get('miniStatment/{wallet_id}',[invoiceController::class,'miniStatment']);
Route::get('suspendedWallet/{wallet_id}/{rule}',[WalletController::class,'suspendedWallet']);
Route::get('Quotaton',[QuotationController::class,'Quotaton']);
Route::get('Quotaton/{q_id}',[QuotationController::class,'QuotatonDetais']);
Route::get('Qutations',[QuotationController::class,'Quotaton']);
Route::get('Qutations/reports',[QuotationController::class,'Qutations_reports']);
Route::get('Qutations/Items',[QuotationController::class,'Items']);
Route::get('Qutations-orders',[qutactionOrderController::class,'index']);
Route::get('Qutations-orders/{qutation_order_id}',[qutactionOrderController::class,'showItems']);
Route::get('Qutations-order/items',[qutactionOrderController::class,'AllItems']);
Route::get('Orders',[orderController::class,'index']);
Route::get('Orders/{order_id}',[orderController::class,'show']);
Route::get('Order/items',[orderController::class,'order_itms']);
Route::get('/Traders',[UsersController::class,'traders']);
Route::get('/Trader/{trader_id}',[UsersController::class,'show_t']);
Route::get('Trader/{trader_id}/{account_status}',[UsersController::class,'account_status']);
Route::post('Contentions',[contentionController::class,'store']);
Route::get('Contentions',[contentionController::class,'index']);
Route::get('Contention/{con_id}',[contentionController::class,'show']);
Route::get('Drivers',[UsersController::class,'driver']);
Route::get('Driver/{driver_id}',[UsersController::class,'driver_show']);

//End Of routes
Route::get('test',[HomeController::class,'test']);
Route::get('',[HomeController::class,'Processes']);
Route::get('/index2',[layoutsController::class,'index2']);
//Route::get('/index3',[layoutsController::class,'index3']);
Route::get('/statistics',[HomeController::class,'statistics']);
Route::get('/Processes',[HomeController::class,'Processes']);
//Wallet section
Route::get('/Wallet',[WalletController::class,'index']);
Route::get('/Wallet/{wallet_id}',[WalletController::class,'show']);
Route::get('/MoneyTransferWD',[WalletController::class,'MoneyTransferWD']);
//end Wallet section
//user section
Route::get('/login',[UsersController::class,'login']);
Route::get('/Register',[UsersController::class,'Register']);
//Route::post('/Register',[UsersController::class,'Register']);
Route::get('/Users',[UsersController::class,'index']);
Route::get('/users/{user_id}',[UsersController::class,'show']);
Route::get('/UserWallet',[UsersController::class,'UserWallet']);
Route::get('/UserDeals',[UsersController::class,'UserDeals']);
//end user section
// invoice section

Route::get('/UserInvoices',[UsersController::class,'UserInvoices']);
Route::get('/invoicePrint',[UsersController::class,'invoicePrint']);
//end invoice section

//sellers section
Route::get('/Sellers',[SellersController::class,'Sellers']);
Route::get('/SellerDetails/{seller_id}',[SellersController::class,'SellerDetails']);
Route::get('/SellerWallet',[SellersController::class,'SellerWallet']);
Route::get('/SellerDeals',[SellersController::class,'SellerDeals']);
Route::get('/SellerInvoices',[SellersController::class,'SellerInvoices']);
Route::get('/SellerInvoicePrint',[SellersController::class,'SellerInvoicePrint']);
//end sellers section
Route::get('/MoneyTransfer',[MoneyTransferController::class,'MoneyTransfer']);
Route::get('/Showroom',[ShowroomController::class,'Showroom']);
//Quotato section

//end Quotato section
// Delivery section
Route::get('/Delivery',[DeliveryController::class,'Delivery']);
Route::get('/DeliveryDetails',[DeliveryController::class,'DeliveryDetails']);
//end Delivery section
// Disputes section
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
 Route::get('/Settings',[SettingsController::class,'Settings']);
 Route::get('/CitySetting',[CitySettingsController::class,'CitySetting']);
 Route::get('/RivalFee',[RivalFeeController::class,'RivalFee']);

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia\Inertia::render('Dashboard');
})->name('dashboard');
