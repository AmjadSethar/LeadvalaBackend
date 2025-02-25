<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Log;


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
Route::get('language/{locale}', function ($locale) {
    app()->setLocale($locale);
    session()?->put('locale', $locale);

    return redirect()->back();
})->name('lang');

Route::post('states', 'CountryStateController@getStates');

Route::get('/getCountryCode', 'CountryStateController@getCountryCode');

Route::get('booking/invoice/{booking_number}', 'App\Http\Controllers\API\BookingController@getInvoice')->name('invoice');

Route::get('/', function () {
    return redirect()->route('login');
})->name('home');

// Clear Cache
Route::get('/clear-cache', function () {
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    Artisan::call('route:clear');
    Artisan::call('optimize:clear');
    Artisan::call('clear-compiled');
    Artisan::call('storage:link');
    Artisan::call('module:publish');

    return "cache cleared successfully";
});






