<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::auth();
Route::group(['middleware' => ['auth']],function(){
	Route::get('/', function () {
	    return view('welcome');
	});

	Route::get('user/password','UserController@changePassword');
	Route::post('user/password','UserController@newPassword');
	
	Route::get('accounting/completion','PurchaseController@accountingCompletion');
	Route::get('location/completion','PurchaseController@locationCompletion');
	Route::get('item/completion','PurchaseController@itemCompletion');
	Route::get('item-code/completion','PurchaseController@itemCodeCompletion');
	Route::get('purchase/completion','PurchaseController@purchaseCompletion');
	Route::get('order/completion','OrderController@orderCompletion');
	Route::get('supplier/completion','SupplierController@supplierCompletion');
	Route::get('unit/completion','PurchaseController@unitCompletion');
	Route::post('importExcel','ItemController@importExcel');
	Route::get('purchase/{id}/approve','PurchaseController@approve');
	Route::resource('purchase','PurchaseController');

	Route::get('/403', function () {
	    return view('errors.503');
	});

	Route::group(['middleware' => ['redirect.operator','redirect.hod','redirect.supervisior']], function (){
		Route::resource('user','UserController');
	});

	Route::group(['middleware' => ['allow.logistic','redirect.operator']], function (){
		Route::get('item/stock','ItemController@stockReport');
		Route::resource('item','ItemController');
	});

	Route::group(['middleware' => ['redirect.supervisior','redirect.hod']], function (){

	});

	Route::group(['middleware' => ['allow.department']], function (){
		Route::resource('unit','UnitController');
	});
	
	Route::group(['middleware' => ['allow.logistic']], function (){
		//order
		Route::get('order/{id}/approve','OrderController@approve');
		Route::resource('order','OrderController');
		
		Route::get('material/{id}/approve','MaterialController@approve');
		Route::resource('material','MaterialController');

		//supplier
		Route::resource('supplier','SupplierController');

		
		Route::get('issue/{id}/approve','IssueController@approve');
		Route::resource('issue','IssueController');
		
		Route::get('return/{id}/approve','ReturnController@approve');
		Route::resource('return','ReturnController');
	});

	Route::group(['middleware' => ['allow.finance']], function (){
		Route::resource('transaksi/acc','AccountingController');

		Route::post('transaksi/petty/print','PettyController@printFromDate');
		Route::resource('transaksi/petty','PettyController');

		Route::get('transaksi/cash','TransaksiController@indexSingle');
		Route::get('transaksi/cash/create','TransaksiController@createCash');
		Route::get('transaksi/bank','TransaksiController@indexSingle');
		Route::get('transaksi/bank/create','TransaksiController@createBank');
		Route::get('transaksi/iou','TransaksiController@indexSingle');
		Route::get('transaksi/iou/create','TransaksiController@createIou');
		Route::get('transaksi/ious','TransaksiController@indexSingle');
		Route::get('transaksi/ious/create','TransaksiController@createIous');
		Route::get('transaksi/{id}/attachment','TransaksiController@attachmentView');
		Route::post('transaksi/{id}/attachment','TransaksiController@attachmentPost');
		Route::resource('transaksi','TransaksiController');
		
		Route::delete('attachment/{id}','TransaksiController@attachmentDelete');
		Route::get('iou/completion','TransaksiController@iouCompletion');
	});
});
//Route::get('/home', 'HomeController@index');
