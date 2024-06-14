<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Validator;
use App\Models\Banner;
use App\Models\Setting;

class AppServiceProvider extends ServiceProvider
{
   
    public function register()
    {
        
    }

   
    public function boot()
    {
        Paginator::useBootstrap();

        $banner_data = Banner ::where('id',1)->first();
        $settings_data = Setting ::where('id',1)->first();
        view()->share('global_banner_data',$banner_data);
        view()->share('global_settings_data',$settings_data);


        Validator::extend('older_than_today', function ($attribute, $value, $parameters, $validator) {
            return strtotime($value) <= strtotime('today');
        });
    
        Validator::extend('phone_number', function ($attribute, $value, $parameters, $validator) {
            return preg_match('/^\+?\d{8,15}$/', $value);
        });
        
        
    }
}
