<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\SM\SmController;
use App\Http\Controllers\AM\AmController;
use App\Http\Controllers\RM\RmController;
use App\Http\Controllers\Head\HeadController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });



Route::get('/', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('auth.login');
Route::post('/logout', [LoginController::class, 'logout'])->name('auth.logout');


Route::prefix('admin')->middleware(['auth', 'role:admin'])->group(function() {
    Route::get('/dashboard', [AdminController::class, 'Dashboard']);

    // data iwr
    Route::get('/lihat_data_iwr', [AdminController::class, 'LihatDataIWR']);
    Route::get('/add_data_iwr', [AdminController::class, 'AddDataIwr']);
    Route::post('/submit_add_data_iwr', [AdminController::class, 'SubmitAddDataIwr']);
    Route::get('/edit_data_iwr/{id}', [AdminController::class, 'EditDataIwr'])->name('update_data_iwr');
    Route::put('/submit_update_data_iwr/{id}', [AdminController::class, 'UpdateDataIwr'])->name('submit_update_data_iwr');
    Route::delete('/delete_data_iwr/{id}', [AdminController::class, 'DeleteDataIwr'])->name('delete_data_iwr');
    Route::get('/generate-wr-no', [AdminController::class, 'GenerateCodeWR']);
    Route::get('/generate-resto', [AdminController::class, 'GetDataResto']);


    // Role Management
    Route::get('/roles', [RoleController::class, 'index'])->name('roles.index');
    Route::get('/roles/create', [RoleController::class, 'create'])->name('roles.create');
    Route::post('/roles', [RoleController::class, 'store'])->name('roles.store');
    Route::get('/roles/{id}/edit', [RoleController::class, 'edit'])->name('roles.edit');
    Route::put('/roles/{id}', [RoleController::class, 'update'])->name('roles.update');
    Route::delete('/roles/{id}', [RoleController::class, 'destroy'])->name('roles.destroy');

    // Permission Management
    Route::get('/permissions', [PermissionController::class, 'index'])->name('permissions.index');
    Route::get('/permissions/create', [PermissionController::class, 'create'])->name('permissions.create');
    Route::post('/permissions', [PermissionController::class, 'store'])->name('permissions.store');
    Route::get('/permissions/{id}/edit', [PermissionController::class, 'edit'])->name('permissions.edit');
    Route::put('/permissions/{id}', [PermissionController::class, 'update'])->name('permissions.update');
    Route::delete('/permissions/{id}', [PermissionController::class, 'destroy'])->name('permissions.destroy');

    Route::get('/logout', [AdminController::class, 'logout'])->name('admin.logout');

});


Route::prefix('sm')->middleware(['auth', 'role:sm'])->group(function() {
    //sm dashboard
    Route::get('/dashboard', [SmController::class, 'Dashboard']);

    // data iwr
    Route::get('/lihat_data_iwr', [SmController::class, 'LihatDataIWR']);
    Route::get('/add_data_iwr', [SmController::class, 'AddDataIwr']);
    Route::post('/submit_add_data_iwr', [SmController::class, 'SubmitAddDataIwr']);
    Route::get('/edit_data_iwr/{id}', [SmController::class, 'EditDataIwr'])->name('update_data_iwr');
    Route::put('/submit_update_data_iwr/{id}', [SmController::class, 'UpdateDataIwr'])->name('submit_update_data_iwr');
    Route::delete('/delete_data_iwr/{id}', [SmController::class, 'DeleteDataIwr'])->name('delete_data_iwr');
    Route::get('/generate-wr-no', [SmController::class, 'GenerateCodeWR']);
    Route::get('/generate-resto', [SmController::class, 'GetDataResto']);

    Route::get('/logout', [SmController::class, 'logout'])->name('sm.logout');
});


Route::prefix('am')->middleware(['auth', 'role:am'])->group(function() {
    Route::get('/dashboard', [AmController::class, 'Dashboard']);

    //approval am
    Route::get('/approval_am', [AmController::class, 'HalamanApproval']);
    Route::post('/update-apporoval', [AmController::class, 'UpdateApproval1'])->name('approval.am');

    Route::get('/logout', [AmController::class, 'logout'])->name('logout');
});


Route::prefix('rm')->middleware(['auth', 'role:rm'])->group(function() {
    Route::get('/dashboard', [RmController::class, 'Dashboard']);

    Route::get('/approval_rm', [RmController::class, 'HalamanApproval2']);
    Route::post('/update-approval', [RmController::class, 'UpdateApproval2'])->name('approval.rm');

    Route::get('/logout', [RmController::class, 'logout'])->name('logout');

});


Route::prefix('head')->middleware(['auth', 'role:head'])->group(function() {
    Route::get('/dashboard', [HeadController::class, 'Dashboard']);

    Route::get('/approval_head', [HeadController::class, 'HalamanApproval3']);
    Route::post('/update-approval3', [HeadController::class, 'UpdateApproval3'])->name('approval.head');


    Route::get('/logout', [HeadController::class, 'logout'])->name('head.logout');
});



Route::controller(AuthController::class)->group(function () {
    Route::post('auth/login', 'login')->name('auth.login');
});


