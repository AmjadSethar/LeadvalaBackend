<?php

namespace App\Providers;


use App\Models\User;
use Illuminate\Pagination\Paginator;
use App\Helpers\Helpers;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;



class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Collection::macro('paginate', function ($perPage = 15) {
            $page = LengthAwarePaginator::resolveCurrentPage('page');
            return new LengthAwarePaginator($this->forPage($page, $perPage), $this->count(), $perPage, $page, [
                'path' => LengthAwarePaginator::resolveCurrentPath(),
                'query' => request()->query(),
            ]);
        });

        Schema::defaultStringLength(191);
        Paginator::useBootstrap();
        $themeOptions = $this->getThemeOptions();
        view()->share('themeOptions', $themeOptions);
    }

    private function getThemeOptions()
    {
        if ($this->isDatabaseConnected()) {
            try {
               
                return  Helpers::getThemeOptions();
                

            } catch (Exception $e) {
                return $this->getDefaultThemeOptions();
            }
        }

        return $this->getDefaultThemeOptions();
    }

    private function isDatabaseConnected()
    {
        try {
            DB::connection()->getPdo();
            return true;
        } catch (\Exception $e) {
            return false;
        }
    }

    private function getDefaultThemeOptions()
    {
        $themeOptionsSeeder = new ThemeOptionSeeder();
        return $themeOptionsSeeder->getThemeOptions();
    }
}
