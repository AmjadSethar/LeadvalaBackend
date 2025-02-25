<?php

namespace App\Helpers;

use App\Enums\BannerTypeEnum;
use App\Enums\BookingEnum;
use App\Enums\BookingStatusReq;
use App\Enums\PaymentMethod;
use App\Enums\PaymentStatus;
use App\Enums\RoleEnum;
use App\Enums\SortByEnum;
use App\Models\Address;
use App\Models\BankDetail;
use App\Models\Booking;
use App\Models\BookingStatus;
use App\Models\Category;
use App\Models\Country;
use App\Models\Currency;
use App\Models\Module;
use App\Models\ProviderWallet;
use App\Models\Review;
use App\Models\Service;
use App\Models\ServicemanWallet;
use App\Models\ServicePackage;
use App\Models\Setting;
use App\Models\State;
use App\Models\SystemLang;
use App\Models\User;
use App\Models\Wallet;
use Carbon\Carbon;
use Exception;
use Google_Client;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;
use Modules\Coupon\Entities\Coupon;
use Nwidart\Modules\Facades\Module as NwidartModule;

class Helpers
{
    public static function modules()
    {
        return Module::get();
    }

    public static function isUserLogin()
    {
        return Auth::guard('api')->check();
    }

    public static function isFirstAddress($address)
    {
        if ($address) {
            if ($address->user_id) {
                $addresses = Address::where('user_id', $address->user_id)->count();
            } else {
                $addresses = Address::where('service_id', $address->service_id)->count();
            }

            return $addresses > 1;
        }

        return true;
    }

    public static function getBookingById($id)
    {
        return Booking::findOrFail($id)?->first();
    }

    public static function getCountries()
    {
        return Country::pluck('name', 'id');
    }

    public static function getCountryCodes()
    {
        return Country::get(['name', 'phone_code', 'id', 'iso_3166_2', 'flag'])->unique('phone_code');
    }

    public static function getStatesByCountryId($countryId)
    {
        return State::where('country_id', $countryId)->get(['name', 'id']);
    }

    public static function getCountryCode()
    {
        return Country::get(['phone_code', 'id', 'iso_3166_2', 'flag'])->unique('phone_code');
    }

    public static function getConsumerById($consumer_id)
    {
        return User::whereNull('deleted_at')->where('id', $consumer_id)->first();
    }

    public static function mediaUpload($modelName, $fileName)
    {
        $media = $modelName->addMediaFromRequest($fileName)->toMediaCollection($fileName);
        $modelName->profile_image_url = $media->getFullUrl();
        $modelName->save();
    }

    public static function getRelatedServiceId($model, $category_id, $service_id)
    {
        return $model->whereRelation(
            'categories',
            function ($categories) use ($category_id) {
                $categories->Where('category_id', $category_id);
            }
        )->whereNot('id', $service_id)->pluck('id')->toArray();
    }

    public static function getWalletIdByUserId($userId)
    {
        return Wallet::where('consumer_id', $userId)->pluck('id')->first();
    }

    public static function getProviderWalletIdByproviderId($providerId)
    {
        return ProviderWallet::where('provider_id', $providerId)->pluck('id')->first();
    }

    public static function getServicemanWalletIdByServicemanId($serviceman_id)
    {
        return ServicemanWallet::where('serviceman_id', $serviceman_id)->pluck('id')->first();
    }

    public static function getDefaultCurrencySymbol()
    {
        $settings = self::getSettings();
        if (isset($settings['general']['default_currency'])) {
            $currency = $settings['general']['default_currency'];

            return $currency->symbol;
        }
    }

    public static function getDefaultCurrencyCode()
    {
        $settings = self::getSettings();
        if (isset($settings['general']['default_currency'])) {
            $currency = $settings['general']['default_currency'];

            return $currency->code;
        }
    }

    public static function covertDefaultExchangeRate($amount)
    {
        return self::currencyConvert(self::getDefaultCurrencyCode(), $amount);
    }

    public static function getCurrencyExchangeRate($currencyCode)
    {
        return Currency::where('code', $currencyCode)?->pluck('exchange_rate')?->first();
    }

    public static function currencyConvert($currencySymbol, $amount)
    {
        $exchangeRate = self::getCurrencyExchangeRate($currencySymbol) ?? 1;
        $price = $amount * $exchangeRate;

        return self::roundNumber($price);
    }

    public static function getWalletBalanceByUserId($userId)
    {
        return Wallet::where('consumer_id', $userId)->pluck('balance')->first();
    }

    public static function getBannerCategories($catgoryType)
    {
        switch ($catgoryType) {
            case BannerTypeEnum::BANNERTYPE['category']:
                return Category::where(['status' => true])->get(['title', 'id']);
                break;

            case BannerTypeEnum::BANNERTYPE['provider']:
                return User::role('provider')->where('status', true)->get();
                break;
            default:
                return Service::where(['status' => true])->get(['title', 'id']);
                break;
        }

        return $catgoryType;
    }

    public static function getCurrentRoleName()
    {
        $user = Auth::guard('api')->user();
        $role = $user->roles->first();
        $roleName = $role->name;

        return $roleName;
    }

    public static function getCurrentUser()
    {
        return Auth::guard('api')->user();
    }

    public static function getCurrentUserId()
    {
        return Auth::guard('api')->user()?->id;
    }

    public static function isDefaultLang($id)
    {
        $settings = self::getSettings();
        if ($settings) {
            if (isset($settings['general'])) {
                return $settings['general']['default_language_id'] == $id;
            }
        }
    }

    public static function getCoupon($data)
    {
        return Coupon::where([['code', 'LIKE', '%'.$data.'%'], ['status', true]])
            ->orWhere('id', 'LIKE', '%'.$data.'%')
            ->with(['services', 'exclude_services'])
            ->first();
    }

    public static function isCommandLineInstalled()
    {
        if (env('DB_DATABASE') && env('DB_USERNAME')) {
            DB::connection()->getPDO();
            if (DB::connection()->getDatabaseName()) {
                if (Schema::hasTable('seeders')) {

                    $completeSeeders = DB::table('seeders')
                        ->whereIn('name', config('enums.seeders'))
                        ->where('is_completed', true)->count();

                    if ($completeSeeders == count(config('enums.seeders'))) {
                        Storage::disk('local')->put(
                            config('config.migration'),
                            json_encode(
                                ['application_migration' => 'true']
                            )
                        );

                        return true;
                    }
                }
            }
        }

        return false;
    }

    public static function getFCMAccessToken()
    {
        $client = new Google_Client();
        $client->setAuthConfig(public_path('admin/assets/firebase.json'));
        $client->addScope('https://www.googleapis.com/auth/firebase.messaging');
        $client->refreshTokenWithAssertion();
        $token = $client->getAccessToken();

        return $token['access_token'];
    }

    public static function pushNotification($notification)
    {
        try {

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/v1/projects/fixit-db226/messages:send');
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($notification));
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json', 'Authorization: Bearer '.self::getFCMAccessToken()]);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

            $result = curl_exec($ch);
            curl_close($ch);

        } catch (Exception $e) {

        }
    }

    public static function installation()
    {
        if (! self::isCommandLineInstalled()) {
            if (self::migration()) {
                if (Storage::disk('local')->exists(config('config.installation'))) {
                    $install = json_decode(Storage::get(config('config.installation')));
                    if ($install->application_installation === 'Completed') {
                        return true;
                    }

                    return true;
                }
            }

            return false;
        }

        return true;
    }

    public static function migration()
    {
        if (! self::isCommandLineInstalled()) {
            if (Storage::disk('local')?->exists(config('config.migration')) === true) {
                $install = json_decode(Storage::get(config('config.migration')));
                if ($install->application_migration == 'true') {
                    return true;
                }

                return true;
            }

            return false;
        }

        return true;
    }

    public static function getPaymentAccount($user_id)
    {
        return BankDetail::where('user_id', $user_id)->first();
    }

    public static function getCurrentProviderId()
    {
        if (self::isUserLogin()) {
            return Auth::guard('api')->user()?->id;
        }
    }

    public static function addMedia($model, $media, $collectionName)
    {
        return $model->addMedia($media)->toMediaCollection($collectionName);
    }

    public static function getSettings()
    {
        return Setting::pluck('values')->first();
    }

    public static function getAdmin()
    {
        return User::role(RoleEnum::ADMIN)->first();
    }

    public static function getRoleByUserId($user_id)
    {
        return User::findOrFail($user_id)->getRoleNames()->first();
    }

    public static function getProviderById($provider_id)
    {
        return User::where('id', $provider_id)->first();
    }

    public static function getProviderIdByServiceId($service_id)
    {
        return Service::where('id', $service_id)->pluck('user_id')->first();
    }

    public static function getRoleNameByUserId($user_id)
    {
        return User::find($user_id)?->role?->name;
    }

    public static function getRelatedProductId($model, $category_id, $product_id = null)
    {
        return $model->whereRelation(
            'categories',
            function ($categories) use ($category_id) {
                $categories->Where('category_id', $category_id);
            }
        )->whereNot('id', $product_id)->inRandomOrder()->limit(6)->pluck('id')->toArray();
    }

    public static function getConsumerBooking($consumer_id, $service_id)
    {
        return Booking::where('consumer_id', $consumer_id)
            ->where('service_id', $service_id)->whereNotNull('parent_id')
            ->get();
    }

    public static function roundNumber($numb)
    {
        return number_format($numb, 2, '.', '');
    }

    public static function formatDecimal($value)
    {
        return floor($value * 100) / 100;
    }

    public static function getServicePrice($service_id)
    {
        return Service::where('id', $service_id)->first(['price', 'discount']);
    }

    public static function getBookingStatusIdByName($name)
    {
        return BookingStatus::where('name', $name)->pluck('id')->first();
    }

    public static function getSalePrice($service)
    {
        $servicePrices = self::getPrice($service);

        return $servicePrices->price - (($servicePrices->price * $servicePrices->discount) / 100);
    }

    public static function getPackageSalePrice($service_package)
    {
        $servicePrices = ServicePackage::where('id', $service_package['service_package_id'])->first(['price', 'discount']);

        return $servicePrices->price - (($servicePrices->price * $servicePrices->discount) / 100);
    }

    public static function getSubTotal($price, $quantity = 1)
    {
        return $price * $quantity;
    }

    public static function getTotalRequireServicemenByServiceId($service_id)
    {
        return Service::where('id', $service_id)->pluck('required_servicemen')->first();
    }

    public static function getPackageSubTotal($price, $quantity = 1)
    {
        return $price * $quantity;
    }

    public static function getTotalAmount($services, $service_packages)
    {
        $subtotal = [];
        if ($service_packages) {
            foreach ($service_packages as $service_package) {
                $subtotal[] = self::getPackageSalePrice($service_package);
            }
        }

        foreach ($services as $service) {
            $subtotal[] = self::getSalePrice($service);
        }

        return array_sum($subtotal);
    }

    public static function getPrice($service)
    {
        return self::getServicePrice($service['service_id']);
    }

    public static function walletIsEnable()
    {
        $settings = self::getSettings();

        return $settings['activation']['wallet_enable'];
    }

    public static function couponIsEnable()
    {
        $settings = self::getSettings();

        return $settings['activation']['coupon_enable'];
    }

    public static function getCategoryCommissionRate($categories)
    {
        return Category::whereIn('id', $categories)->pluck('commission_rate');
    }

    public static function getBookingIdBySlug($slug)
    {
        return BookingStatus::where('slug', $slug)->first();
    }

    public static function getBookingStatusIdByReq($req_status)
    {
        $status = $req_status;
        switch ($req_status) {
            case BookingStatusReq::PENDING:
                $status = BookingEnum::PENDING;
                break;
            case BookingStatusReq::PENDING:
                $status = BookingEnum::PENDING;
                break;
            case BookingStatusReq::ASSIGNED:
                $status = BookingEnum::ASSIGNED;
                break;
            case BookingStatusReq::ON_THE_WAY:
                $status = BookingEnum::ON_THE_WAY;
                break;
            case BookingStatusReq::DECLINE:
                $status = BookingEnum::DECLINE;
                break;
            case BookingStatusReq::ON_HOLD:
                $status = BookingEnum::ON_HOLD;
                break;

            case BookingStatusReq::START_AGAIN:
                $status = BookingEnum::START_AGAIN;
                break;

            case BookingStatusReq::COMPLETED:
                $status = BookingEnum::COMPLETED;
                break;

        }

        return self::getbookingStatusId($status);
    }

    public static function getbookingStatusIdBySlug($booking_status_slug)
    {
        return BookingStatus::where('slug', $booking_status_slug)?->value('id');
    }

    public static function getbookingStatusId($booking_status)
    {
        return BookingStatus::where('name', $booking_status)?->value('id');
    }

    public static function getbookingStatusName($booking_status_id)
    {
        return BookingStatus::where('name', $booking_status_id)?->value('name');
    }

    public static function getTopSellingServicec($services)
    {
        $orders_count = $services->withCount(['bookings'])->get()->sum('bookings_count');
        $services = $services->orderByDesc('bookings_count');
        if (! $orders_count) {
            $services = (new Service)->newQuery();
            $services->whereRaw('1 = 0');

            return $services;
        }

        return $services;
    }

    public static function getTopVendors($store)
    {
        $store = $store->orderByDesc('orders_count');
        $orders_count = $store->withCount(['orders'])->get()->sum('orders_count');
        if (! $orders_count) {
            $store = (new User)->newQuery();
            $store->whereRaw('1 = 0');

            return $store;
        }

        return $store;
    }

    public static function getProductStock($product_id)
    {
        return Service::where([['id', $product_id], ['status', true]])->first();
    }

    public static function getCountUsedPerConsumer($consumer, $coupon)
    {
        return Booking::where([['consumer_id', $consumer], ['coupon_id', $coupon]])->count();
    }

    public static function isBookingCompleted($bookings)
    {
        foreach ($bookings as $booking) {
            if ($booking->payment_status == PaymentStatus::COMPLETED && $booking->booking_status->name == BookingEnum::COMPLETED) {
                return true;
            }
        }

        return false;
    }

    public static function isAlreadyReviewed($consumer_id, $service_id)
    {
        $review = Review::where([
            ['consumer_id', $consumer_id],
            ['service_id', $service_id],
        ])->exists();
        if (! $review) {
            return true;
        }

        return false;
    }

    public static function isAlreadyReviewedServiceman($consumer_id, $serviceman_id)
    {
        $review = Review::where([
            ['consumer_id', $consumer_id],
            ['serviceman_id', $serviceman_id],
        ])->exists();
        if (! $review) {
            return true;
        }

        return false;
    }

    public static function getFilterBy($model, $filter_by)
    {
        switch ($filter_by) {
            case SortByEnum::TODAY:
                $model = $model->where('created_at', Carbon::now());
                break;

            case SortByEnum::LAST_WEEK:
                $startWeek = Carbon::now()->subWeek()->startOfWeek();
                $endWeek = Carbon::now()->subWeek()->endOfWeek();
                $model = $model->whereBetween('created_at', [$startWeek, $endWeek]);
                break;

            case SortByEnum::LAST_MONTH:
                $model = $model->whereMonth('created_at', Carbon::now()->subMonth()->month);
                break;

            case SortByEnum::THIS_YEAR:
                $model = $model->whereYear('created_at', Carbon::now()->year);
                break;
        }

        return $model;
    }

    public static function getReviewRatings($service_id)
    {
        $review = Review::where('service_id', $service_id)->get();

        return [
            $review->where('rating', 1)->count(),
            $review->where('rating', 2)->count(),
            $review->where('rating', 3)->count(),
            $review->where('rating', 4)->count(),
            $review->where('rating', 5)->count(),
        ];
    }

    public static function getProvidersCount()
    {
        return User::role(RoleEnum::PROVIDER)->where('system_reserve', false)->count();
    }

    public static function getServicemenCount()
    {
        return User::role(RoleEnum::SERVICEMAN)->where('system_reserve', false)->where('provider_id', auth()->user()->id)->count();
    }

    public static function getServicesCount()
    {
        $roleName = self::getCurrentRoleName();
        if ($roleName === RoleEnum::PROVIDER) {
            $services = Service::where('user_id', auth()->user()->id);
        } else {
            $services = Service::all();
        }

        return $services->count();
    }

    public static function getBookingsCount()
    {
        $roleName = self::getCurrentRoleName();
        if ($roleName === RoleEnum::PROVIDER) {
            $bookings = Booking::whereNull('parent_id')->whereHas('sub_bookings', function ($query) {
                $query->where('provider_id', auth()->user()->id);
            })->count();
        } else if($roleName === RoleEnum::SERVICEMAN) {
            $bookings = Booking::whereHas('servicemen', function ($query) {
                $query->where('users.id', auth()->user()->id);
            })->whereNotNull('parent_id')
              ->count();
        } else {
            $bookings = Booking::whereNotNull('parent_id')?->count();
        }

        return $bookings;
    }

    public static function getCustomersCount()
    {
        return User::role(RoleEnum::CONSUMER)->where('system_reserve', false)->count();
    }

    // Payment Gateway
    public static function isModuleEnable($moduleName)
    {
        return NwidartModule::isEnabled($moduleName);
    }

    public static function getAllPaymentModules()
    {
        return NwidartModule::all();
    }

    public static function getLanguages()
    {
        return SystemLang::where('status', true)?->get();
    }

    public static function getPaymentMethodList()
    {
        $settings = self::getSettings();
        $paymentMethods = [];
        $modules = self::getAllPaymentModules();
        $paymentMethods[] = [
            'name' => __('static.cash'),
            'slug' => PaymentMethod::COD,
            'image' => null,
            'status' => $settings['activation']['cash'],
        ];
        foreach ($modules as $module) {
            $paymentFile = module_path($module->getName(), 'Config/payment.php');
            if (file_exists($paymentFile)) {
                $payment = include $paymentFile;
                $paymentMethods[] = [
                    'name' => $payment['name'],
                    'slug' => $payment['slug'],
                    'image' => url($payment['image']),
                    'status' => $module?->isEnabled(),
                ];
            }
        }

        return $paymentMethods;
    }

    public static function getPaymentMethodConfigs()
    {
        $paymentMethods = [];
        $modules = self::getAllPaymentModules();
        foreach ($modules as $module) {
            $paymentFile = module_path($module->getName(), 'Config/payment.php');
            if (file_exists($paymentFile)) {
                $payment = include $paymentFile;
                $paymentMethods[] = [
                    'name' => $payment['name'],
                    'slug' => $payment['slug'],
                    'image' => url($payment['image']),
                    'status' => $module?->isEnabled(),
                    'configs' => $payment['configs'],
                    'fields' => $payment['fields'],
                ];
            }
        }

        return $paymentMethods;
    }
}
