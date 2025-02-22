<?php 

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Middlewares\PermissionMiddleware;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * Configure the middleware.
     */
    protected function configureMiddleware(): void
    {
        // Register the permission middleware
        Route::middleware('permission', PermissionMiddleware::class);
    }
}
