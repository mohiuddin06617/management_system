<?php

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

Route::resource('notices', 'NoticeController');

/*Route::prefix('notices')->group(function() {
//    Route::get('/', 'NoticeController@index');
    Route::resource('', 'NoticeController');
});*/
