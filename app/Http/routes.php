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
	Route::get('item/stock','ItemController@stockReport');
	Route::get('item/completion','PurchaseController@itemCompletion');
	Route::get('item-code/completion','PurchaseController@itemCodeCompletion');
	Route::resource('item','ItemController');

	Route::get('purchase/completion','PurchaseController@purchaseCompletion');
	Route::resource('purchase','PurchaseController');

	Route::get('transaksi/pettycash','TransaksiController@pettyCash');
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
	Route::get('accounting/completion','PurchaseController@accountingCompletion');
	Route::get('iou/completion','TransaksiController@iouCompletion');
	//order
	Route::get('order/completion','OrderController@orderCompletion');
	Route::resource('order','OrderController');
	//supplier
	Route::get('supplier/completion','SupplierController@supplierCompletion');
	Route::resource('supplier','SupplierController');
	
	Route::resource('material','MaterialController');

	Route::get('unit/completion','PurchaseController@unitCompletion');
	Route::resource('unit','UnitController');

	Route::post('importExcel','ItemController@importExcel');
	
	Route::resource('issue','IssueController');
	
	Route::resource('return','ReturnController');
});
//Route::get('/home', 'HomeController@index');
