<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// $app->get('/read-csv', 'ReadCsvController@migrasi_tb_kegiatan_patroli');
// $app->get('/test', 'ReadCsvController@test');
// $app->get('/migrasi2', 'ReadCsvController@migrasi_tb_lokasi_patroli');

$api = $app->make(Dingo\Api\Routing\Router::class);

$api->version('v1', function ($api) {

    $api->post('/auth/login', [
        'as' => 'api.auth.login',
        'uses' => 'App\Http\Controllers\Auth\AuthController@postLogin'
    ]);

    // Guest Group
    $api->group([
        'namespace' => 'App\Http\Controllers'
    ], function ($api) {
        // Get list all provinsi
        $api->get('/provinsi/list', 'ProvinsiController@list');
        // Resume perprovinsi
        $api->get('/provinsi/resume', 'ProvinsiController@resume');
        // Get list kategori patrolil
        $api->get('/kategori-patroli/list', 'KategoriPatroliController@list');
        // List patroli (can be filtered)
        $api->get('/patroli/list', 'PatroliController@listPatroli');
    });

     $api->group([
        'namespace' => 'App\Http\Controllers\Auth',
        'middleware' => 'api.auth'
    ], function ($api) {
        $api->get('/auth/user', 'AuthController@getUser');
        $api->patch('/auth/refresh', 'AuthController@patchRefresh');
        $api->delete('/auth/invalidate', 'AuthController@deleteInvalidate');
    });
    
});