<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Auth::routes(['verify' => false, 'register' => false]);
Route::post('/set-theme', 'Backend\SettingsController@setTheme')->name('set-theme');
Route::get('placeId', 'Backend\ProviderController@getPlaceId')->name('placeId');
Route::get('/become-provider', 'Auth\BecomeProviderController@index')->name('become-provider.index');
Route::post('/become-provider', 'Auth\BecomeProviderController@store')->name('become-provider.store');
Route::get('google-address', 'Backend\ProviderController@findAddressBasedOnPlaceId')->name('address');

Route::group(['middleware' => ['auth', 'demo'], 'namespace' => 'Backend', 'as' => 'backend.'], function () {

    // Dashboard
    Route::get('dashboard', 'DashboardController@index')->name('dashboard');

    //editor file upload
    Route::post('upload', 'DashboardController@upload')->name('upload');

    //addresses
    Route::resource('address', 'AddressController', ['except' => ['show']]);

    // Account
    Route::get('account/profile', 'AccountController@profile')->name('account.profile');
    Route::put('account/profile/update', 'AccountController@updateProfile')->name('account.profile.update');
    Route::put('account/password/update', 'AccountController@updatePassword')->name('account.password.update');

    // Users
    Route::resource('user', 'UserController', ['except' => ['show']]);
    Route::put('user/{id}/password/update', 'UserController@updatePassword')->name('user.password.update');
    Route::delete('delete-users', 'UserController@deleteRows')->name('delete.users')->middleware('can:backend.user.destroy');
    Route::put('user/status/{id}', 'UserController@status')->name('user.status')->middleware('can:backend.user.update');

    // Role
    Route::resource('role', 'RoleController', ['except' => ['show']]);
    Route::delete('delete-roles', 'RoleController@deleteRows')->name('delete.roles')->middleware('can:backend.role.destroy');

    // Provider
    Route::resource('provider', 'ProviderController', ['except' => ['show']]);
    Route::resource('commission', 'CommissionController', ['except' => ['show']]);
    Route::resource('provider-document', 'ProviderDocumentController', ['except' => ['show']]);
    Route::put('provider/status/{id}', 'ProviderController@status')->name('provider.status');


    Route::resource('/provider-time-slot', 'ProviderTimeSlotController', ['except' => ['show']]);
    Route::put('provider-time-slot/status/{id}', 'ProviderTimeSlotController@status')->name('provider-time-slot.status');
    Route::delete('delete-providers', 'ProviderController@deleteRows')->name('delete.providers');
    Route::delete('delete-provider-time-slots', 'ProviderTimeSlotController@deleteRows')->name('delete.provider-time-slots');
    Route::delete('delete-providerDocuments', 'ProviderDocumentController@deleteRows')->name('delete.providerDocuments');

    //Service
    Route::resource('service', 'ServiceController', ['except' => ['show']]);
    Route::put('service/status/{id}', 'ServiceController@status')->name('service.status');
    Route::delete('delete-services', 'ServiceController@deleteRows')->name('delete.services');
    Route::resource('service-package', 'ServicePackageController', ['except' => ['show']]);
    Route::delete('delete-servicePackages', 'ServicePackageController@deleteRows')->name('delete.servicePackages')->middleware('can:backend.service-package.destroy');
    Route::put('service-package/status/{id}', 'ServicePackageController@status')->name('service-package-status')->middleware('can:backend.service-package.edit');

    // Document
    Route::resource('document', 'DocumentController', ['except' => ['show']]);
    Route::put('document/status/{id}', 'DocumentController@status')->name('document.status');
    Route::delete('delete-documents', 'DocumentController@deleteRows')->name('delete.documents');

    // Categories
    Route::resource('category', 'CategoryController', ['except' => ['show']]);

    // Currencies
    Route::resource('currency', 'CurrencyController', ['except' => ['show']]);
    Route::get('/get-symbol', 'CurrencyController@getSymbol')->name('get-symbol');
    Route::put('currency/status/{id}', 'CurrencyController@status')->name('currency.status')->middleware('can:backend.currency.edit');
    Route::delete('delete-currencies', 'CurrencyController@deleteRows')->name('delete.currencies')->middleware('can:backend.currency.destroy');

    // Blogs
    Route::resource('blog', 'BlogController', ['except' => ['show']]);
    Route::put('blog-status/{id}', 'BlogController@updateStatus')->name('blog-status')->middleware('can:backend.blog.edit');
    Route::put('blog-featured/{id}', 'BlogController@updateIsFeatured')->name('isFeatured')->middleware('can:backend.blog.edit');
    Route::resource('blog-category', 'BlogCategoryController', ['except' => ['show']]);
    Route::delete('delete-blogs', 'BlogController@deleteRows')->name('delete.blogs')->middleware('can:backend.blog.destroy');

    // Pages
    Route::resource('page', 'PageController', ['except' => ['show']]);
    Route::put('page/status/{id}', 'PageController@status')->name('page.status')->middleware('can:backend.blog.edit');
    Route::delete('delete-pages', 'PageController@deleteRows')->name('delete.pages')->middleware('can:backend.page.destroy');

    // taxes
    Route::resource('tax', 'TaxController', ['except' => ['show']]);
    Route::put('tax/status/{id}', 'TaxController@status')->name('tax.status')->middleware('can:backend.tax.edit');
    Route::delete('delete-taxes', 'TaxController@deleteRows')->name('delete.taxs')->middleware('can:backend.tax.destroy');

    // tags
    Route::resource('tag', 'TagController', ['except' => ['show']]);
    Route::put('tag/status/{id}', 'TagController@status')->name('tag.status')->middleware('can:backend.tag.edit');
    Route::delete('delete-tags', 'TagController@deleteRows')->name('delete.tags')->middleware('can:backend.tag.destroy');

    // Serviceman
    Route::resource('serviceman', 'ServiceManController', ['except' => ['show']]);
    Route::get('serviceman/changeIsFeatured', 'ServiceManController@updateIsFeatured');
    Route::get('serviceman/changeStatus', 'ServiceManController@updateStatus');
    Route::put('serviceman/changePassword/{id}', 'ServiceManController@changePassword')->name('serviceman.updatePassword');
    Route::put('serviceman/status/{id}', 'ServiceManController@status')->name('serviceman.status')->can('backend.serviceman.edit');

    // Customer
    Route::resource('customer', 'CustomerController', ['except' => ['show']]);
    Route::delete('delete-customers', 'CustomerController@deleteRows')->name('delete.customers');
    Route::put('customer/status/{id}', 'CustomerController@status')->name('customer.status');

    // Banner
    Route::resource('banner', 'BannerController', ['except' => ['show']]);
    Route::post('/banner-status', 'BannerController@toggleStatus')->name('banner-status')->middleware('cam:backend.banner.edit');
    Route::put('banner/status/{id}', 'BannerController@status')->name('banner.status')->middleware('cam:backend.banner.edit');
    Route::delete('delete-banners', 'BannerController@deleteRows')->name('delete.banners')->middleware('cam:backend.banner.destroy');

    // Banner Category
    Route::post('bannerCategory', 'BannerTypeCategoryController@getBannerCategory');

    //Wallet
    Route::get('wallet', 'WalletController@index')->name('wallet.index')->middleware('can:backend.wallet.index');
    Route::post('wallet/creditOrdebit', 'WalletController@creditOrdebit')->name('wallet.creditOrdebit')->middleware('canAny:backend.wallet.credit,backend.wallet.debit');
    Route::get('get-user-transactions/{user_id}', 'WalletController@walletTransations')->name('get-user-transactions')->middleware('can:backend.wallet.index');
    Route::get('transactions', 'TransactionController@index')->name('transaction.index')->middleware('can:backend.payment_transaction.index')->middleware('can:backend.wallet.index');

    // push notification
    Route::get('push-notifications', 'NotificationController@create')->name('push-notifications')->middleware('can:backend.push_notification.index');
    Route::get('notifications', 'NotificationController@index')->name('notifications')->middleware('can:backend.push_notification.index');
    Route::delete('notifications/destroy/{id}', 'NotificationController@destroy')->name('push_notification.destroy')->middleware('can:backend.push_notification.destroy');
    Route::post('send-push-notification', 'NotificationController@sendNotification')->name('send-notification')->middleware('can:backend.push_notification.create');
    Route::delete('delete-push-notifications', 'NotificationController@deleteRows')->name('delete.push-notifications')->middleware('can:backend.push_notification.destroy');

    Route::get('list-notification', 'NotificationController@listNotification')->name('list-notification');
    Route::post('/notifications/mark-as-read', 'NotificationController@markAsRead')->name('notifications.markAsRead');
    Route::post('notifications/test', 'NotificationController@test')->name('mail.test');

    // User Reviews
    Route::get('review', 'ReviewController@index')->name('reviews');
    Route::delete('review-user-delete/{id}', 'ReviewController@destroy')->name('user-review-delete')->middleware('can:backend.review.destroy');
    Route::delete('delete-user-reviews', 'ReviewController@deleteRows')->name('delete.user.reviews')->middleware('can:backend.review.destroy');

    // Provider Wallet
    Route::resource('provider-wallet', 'ProviderWalletController', ['except' => ['show']])->middleware('can:backend.provider_wallet.index');
    Route::post('provider-wallet/creditOrdebit', 'ProviderWalletController@creditOrdebit')->name('provider-wallet.creditOrdebit')->middleware('canAny:backend.provider_wallet.credit,backend.provider_wallet.debit');
    Route::get('get-provider-transactions/{provider_id}', 'ProviderWalletController@providerWalletTransations')->name('get-provider-transactions')->middleware('can:backend.provider_wallet.index');

     // Serviceman Wallet
     Route::resource('serviceman-wallet', 'ServicemanWalletController', ['except' => ['show']])->middleware('can:backend.serviceman_wallet.index');
     Route::post('serviceman-wallet/creditOrdebit', 'ServicemanWalletController@creditOrDebit')->name('serviceman-wallet.creditOrdebit')->middleware('canAny:backend.serviceman_wallet.credit,backend.serviceman_wallet.debit');
     Route::get('get-serviceman-transactions/{serviceman_id}', 'ServicemanWalletController@servicemanWalletTransations')->name('get-serviceman-transactions')->middleware('can:backend.serviceman_wallet.index');

    // Withdraw Request
    Route::resource('withdraw-request', 'WithdrawRequestController', ['except' => ['show']]);

    // Withdraw Request
    Route::resource('serviceman-withdraw-request', 'ServicemanWithdrawRequestController', ['except' => ['show']]);

    // media
    Route::delete('delete-media/{id}', 'MediaController@destroy')->name('media.delete');

    // Settings
    Route::get('settings', 'SettingsController@index')->name('settings.index');
    Route::get('payment-methods', 'PaymentMethodController@index')->name('paymentmethods.index')->middleware('can:backend.payment_method.index');
    Route::post('payment-methods/{payment}', 'PaymentMethodController@update')->name('paymentmethods.update')->middleware('can:backend.payment_method.edit');
    Route::post('payment-methods/status/{payment}', 'PaymentMethodController@status')->name('paymentmethods.status')->middleware('can:backend.payment_method.edit');
    Route::put('update/settings/{setting}', 'SettingsController@update')->name('update.settings');

    // Booking
    Route::get('bookings', 'BookingController@index')->name('booking.index')->middleware('can:backend.booking.index');
    Route::get('booking/show/{id}', 'BookingController@show')->name('booking.show')->middleware('can:backend.booking.index');
    Route::get('booking/showChild/{id}', 'BookingController@showChild')->name('booking.showChild')->middleware('can:backend.booking.index');
    Route::get('booking/assign', 'BookingController@assign')->name('booking.assign')->middleware('can:backend.booking.edit');
    Route::get('booking/get-servicemen', 'BookingController@getServicemen')->name('booking.getServicemen')->middleware('can:backend.booking.index');
    Route::get('get-provider-services', 'ServicePackageController@getProviderServices')->name('get-provider-services')->middleware('can:backend.booking.index');

    // Languages
    Route::resource('systemLang', 'LanguageController', ['except' => ['show']]);
    Route::delete('delete-language', 'LanguageController@deleteRows')->name('delete.systemLang')->middleware('can:backend.language.destroy');
    Route::put('systemLang/status/{id}', 'LanguageController@status')->name('systemLang.status')->middleware('can:backend.language.edit');
    Route::put('systemLang/rtl/{id}', 'LanguageController@rtl')->name('systemLang.rtl')->middleware('can:backend.language.edit');
    Route::get('systemLang/translate/{locale}/{file?}', 'LanguageController@translate')->name('systemLang.translate')->middleware('can:backend.language.edit');
    Route::post('systemLang/translate/{locale}/{file}', 'LanguageController@translate_update')->name('systemLang.translate.update')->middleware('can:backend.language.edit');

    // Zones
    Route::resource('zone', 'ZoneController', ['except' => ['show']]);
    Route::delete('delete-zones', 'ZoneController@deleteRows')->name('delete.zones')->middleware('can:backend.zone.destroy');
    Route::put('zone/status/{id}', 'ZoneController@status')->name('zone.status')->middleware('can:backend.zone.edit');

    // Clear Cache
    Route::get('/clear-cache', function () {
        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('view:clear');
        Artisan::call('route:clear');
        Artisan::call('optimize:clear');
        Artisan::call('clear-compiled');
        Artisan::call('storage:link');

        return back()->with('message', 'Cache was successfully cleared.');
    })->name('clear-cache');
});
