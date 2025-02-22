<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

class AmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $am = User::create([
            'name' => 'am',
            'email' => 'am@example.com', 
            'password' => Hash::make('am'), 
            'role' => 'am'
        ]);

        // Create Role
        $role = Role::firstOrCreate(['name' => 'am']);

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
        $am->assignRole($role);

        echo "Area Manager seeded successfully!\n";
    }
}
