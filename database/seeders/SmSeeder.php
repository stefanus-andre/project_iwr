<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;
class SmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $sm = User::create([
            'name' => 'sm',
            'email' => 'sm@example.com', // Change if needed
            'password' => Hash::make('sm'), // Default password: admin
            'role' => 'sm'
        ]);

        // Create Role
        $role = Role::firstOrCreate(['name' => 'sm']);

        // Define Permissions
        $permissions = [
            'create',
            'read',
            'update',
            'delete',
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission]);
        }


        $role->syncPermissions($permissions);

        $sm->assignRole($role);

        echo "Store Manager user seeded successfully!\n";
    }
}
