<?php

namespace App\Providers;

use App\Role;
use App\User;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        $user = \Auth::user();

        
        // Auth gates for: User management
        Gate::define('user_management_access', function ($user) {
            return in_array($user->role_id, [1]);
        });

        // Auth gates for: Users
        Gate::define('user_access', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('user_create', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('user_edit', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('user_view', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('user_delete', function ($user) {
            return in_array($user->role_id, [1]);
        });

        // Auth gates for: Working hours
        Gate::define('working_hour_access', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('working_hour_create', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('working_hour_edit', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('working_hour_view', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('working_hour_delete', function ($user) {
            return in_array($user->role_id, [1]);
        });

        // Auth gates for: Clients
        Gate::define('client_access', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('client_create', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('client_edit', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('client_view', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('client_delete', function ($user) {
            return in_array($user->role_id, [1]);
        });

        // Auth gates for: Procedures
        Gate::define('procedure_access', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('procedure_create', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('procedure_edit', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('procedure_view', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('procedure_delete', function ($user) {
            return in_array($user->role_id, [1]);
        });

        // Auth gates for: Appointments
        Gate::define('appointment_access', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('appointment_create', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('appointment_edit', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('appointment_view', function ($user) {
            return in_array($user->role_id, [1]);
        });
        Gate::define('appointment_delete', function ($user) {
            return in_array($user->role_id, [1]);
        });

        // Auth gates for: Calendar
        Gate::define('calendar_access', function ($user) {
            return in_array($user->role_id, [1]);
        });

    }
}
