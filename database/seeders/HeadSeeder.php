<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

class HeadSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $head = User::create([
            'name' => 'head',
            'email' => 'head@example.com', 
            'password' => Hash::make('head'), 
            'role' => 'head'
        ]);

        // Create Role
        $role = Role::firstOrCreate(['name' => 'head']);

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

        // Assign Permissions to Role
        $role->syncPermissions($permissions);

        // Assign Role to Admin
        $head->assignRole($role);

        echo "Head seeded successfully!\n";
    }
}
