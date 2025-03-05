<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Session;

class Localization
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    // public function handle(Request $request, Closure $next): Response
    // {
    //     if ($request->hasHeader("Accept-Language")) {
    //         app()->setLocale($request->header("Accept-Language"));
    //     } else {
    //         app()->setLocale(app()->getLocale());
    //     }


    //     return $next($request);
    // }

    public function handle(Request $request, Closure $next): Response
{
    // Check if locale is stored in the session
    if (Session::has('locale')) {
        app()->setLocale(Session::get('locale'));
    } elseif ($request->hasHeader("Accept-Language")) {
        // Get the "Accept-Language" header value
        $languages = $request->header("Accept-Language");
        
        // Extract the first valid locale (e.g. 'en_GB', 'en_US', 'en')
        $locale = $this->parseAcceptLanguage($languages);
        
        app()->setLocale($locale);
    } else {
        // Fall back to the default app locale if no valid locale is found
        app()->setLocale(app()->getLocale());
    }
    
    return $next($request);
}

private function parseAcceptLanguage($languages)
{
    // Split the languages string by commas to get each language
    $languageList = explode(',', $languages);
    
    // Loop through each language and return the first valid one
    foreach ($languageList as $language) {
        // Extract the locale, stripping quality value (e.g. 'en_GB;q=0.9' -> 'en_GB')
        $locale = explode(';', $language)[0];

        // Validate locale (add your own validation logic here, e.g., checking against a list of supported locales)
        if (in_array($locale, ['en', 'en_US', 'en_GB', 'fr', 'es'])) {
            return $locale;
        }
    }

    // Return a default locale if no valid match is found
    return 'en'; // default locale
}

}
