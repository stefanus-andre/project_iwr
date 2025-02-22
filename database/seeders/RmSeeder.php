<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

class RmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $rm = User::create([
            'name' => 'rm',
            'email' => 'rm@example.com', 
            'password' => Hash::make('rm'), 
            'role' => 'rm'
        ]);

        // Create Role
        $role = Role::firstOrCreate(['name' => 'rm']);

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
        $rm->assignRole($role);

        echo "Regional Manager seeded successfully!\n";
    }
}
