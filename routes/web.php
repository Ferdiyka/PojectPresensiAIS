<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AttendanceController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [AttendanceController::class, 'index']);
Route::post('/absen', [AttendanceController::class, 'absen']);
Route::get('/logs', [AttendanceController::class, 'getLogs'])->name('attendance.logs');
