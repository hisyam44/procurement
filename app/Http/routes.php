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
	Route::get('item/completion','TransaksiController@itemCompletion');
	Route::resource('item','ItemController');
	Route::resource('purchase','PurchaseController');
	Route::get('transaksi/{id}/attachment','TransaksiController@attachmentView');
	Route::post('transaksi/{id}/attachment','TransaksiController@attachmentPost');
	Route::delete('attachment/{id}','TransaksiController@attachmentDelete');
	Route::resource('transaksi','TransaksiController');
	Route::get('purchase/{id}/print','PurchaseController@printPurchase');
	Route::get('unit/completion','PurchaseController@unitCompletion');
	Route::get('accounting/completion','TransaksiController@accountingCompletion');
	Route::get('construction/completion','TransaksiController@constructionCompletion');
	Route::get('constructdesc/completion','TransaksiController@constructdescCompletion');
	Route::get('costcode/completion','TransaksiController@costcodeCompletion');
});
//Route::get('/home', 'HomeController@index');
