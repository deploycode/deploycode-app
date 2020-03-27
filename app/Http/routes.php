<?php

Route::get('/' , 'FrontController@profile');
Route::get('home' , 'FrontController@index');
Route::get('profile' , 'FrontController@profile');
Route::get('blog' , 'FrontController@blog');
Route::get('contact' , 'FrontController@contact');
// ----------------------------------------------------
Route::resource('user', 'UserController');
// ----------------------------------------------------
Route::resource('job', 'JobController');
Route::resource('project', 'ProjectController');
Route::resource('stack', 'StackController');
Route::resource('skill', 'SkillController');
// ------------------------------------------------------
Route::resource('category', 'CategoryController');
Route::resource('tag', 'TagController');
Route::resource('post', 'PostController');
Route::get('post/{slug}', 'PostController@show');
Route::get('post/publish/{id}', 'PostController@publish');
Route::get('post/unpublish/{id}', 'PostController@unpublish');
Route::get('ingenieria-de-software/{slug}', 'PostController@show');
Route::get('frontend/{slug}', 'PostController@show');
Route::get('backend/{slug}', 'PostController@show');
Route::get('devops/{slug}', 'PostController@show');
Route::get('seo/{slug}', 'PostController@show');
// ------------------------------------------------------
Route::resource('log', 'LogController');
Route::get('logout','logController@logout');
Route::resource('mail', 'MailController');
// ------------------------------------------------------
