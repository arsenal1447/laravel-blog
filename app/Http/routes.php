<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'ArticleController@index');


Route::resource('article', 'ArticleController');
Route::resource('comment', 'CommentController');
Route::resource('category', 'CategoryController');
Route::resource('about', 'AboutController');


Route::controllers([
    'backendzxx/auth' => 'backendzxx\AuthController',
    'backendzxx/password' => 'backendzxx\PasswordController',
    'search'=>'SearchController',
]);

Route::group(['prefix'=>'backendzxx','middleware'=>'auth'],function(){
    Route::any('/','backendzxx\HomeController@index');
    Route::resource('home', 'backendzxx\HomeController');
    Route::resource('cate','backendzxx\CateController');
    Route::resource('content','backendzxx\ContentController');
    Route::resource('article','backendzxx\ArticleController');
    Route::resource('tags','backendzxx\TagsController');
    Route::resource('user','backendzxx\UserController');
    Route::resource('comment','backendzxx\CommentController');
    Route::resource('nav','backendzxx\NavigationController');
    Route::resource('links','backendzxx\LinksController');
    Route::controllers([
        'system'=>'backendzxx\SystemController',
        'upload'=>'backendzxx\UploadFileController'
    ]);

});