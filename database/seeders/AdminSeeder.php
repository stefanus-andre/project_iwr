<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    public function run()
    {
        // Create Admin User
        $admin = User::create([
            'name' => 'Admin',
            'email' => 'admin@example.com', // Change if needed
            'password' => Hash::make('admin'), // Default password: admin
        ]);

        // Create Role
        $role = Role::firstOrCreate(['name' => 'admin']);

        // Define Permissions
        $permissions = [
            'create',
            'read',
            'update',
            'delete',
            'manage roles',
            'manage users',
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission]);
        }

        // Assign Permissions to Role
        $role->syncPermissions($permissions);

        // Assign Role to Admin
        $admin->assignRole($role);

        echo "Admin user seeded successfully!\n";
    }
}
