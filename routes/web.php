<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/post/{slug}', 'HomeController@post')->name('post');

Route::group(['middleware'=>'admin'], function (){
	Route::get('/admin', 'AdminController@index');
	Route::resource('admin/users', 'AdminUsersController');
	Route::resource('admin/posts', 'AdminPostsController');
	Route::resource('admin/categories', 'AdminCategoriesController');
	Route::resource('admin/media', 'AdminMediaController');
	Route::delete('admin/delete/media','AdminMediaController@deleteMedia');
});

