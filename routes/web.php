<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryDetailController;
use App\Http\Controllers\WriterController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\AboutUsController;

Route::get('/', [CategoryDetailController::class, 'index'])->name('home');
Route::get('/category/{id}', [CategoryDetailController::class, 'getCategoryById'])->name('category');
Route::get('/details/{id}', [CategoryDetailController::class, 'getDetailById'])->name('details');
Route::get('/writers', [WriterController::class, 'getWriters'])->name('writers');
Route::get('writer/{id}', [WriterController::class, 'getCourseByWriter'])->name('by-writer');
Route::get('/about-us', [AboutUsController::class, 'index'])->name('about-us');
Route::get('/popular', [PopularController::class, 'getPopularCategory'])->name('popular');
