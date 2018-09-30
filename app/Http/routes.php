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

$app->get('/', function () use ($app) {
    return $app->version();
});


$app->get('/migrasi-tb-kegiatan-patroli', 'ReadCsvController@migrasi_tb_kegiatan_patroli');
$app->get('/read-csv', 'ReadCsvController@read');
$app->get('/read-lokasi-udara', 'ReadCsvController@read_lokasi_udara');
$app->get('/read-lokasi-darat', 'ReadCsvController@read_lokasi_darat');
$app->get('/check-udara/{id_kegiatan}', 'ReadCsvController@check_exist_in_udara');
$app->get('/check-darat/{id_kegiatan}', 'ReadCsvController@check_exist_in_darat');
$app->get('/test', 'ExampleController@test');


$api = $app->make(Dingo\Api\Routing\Router::class);

$api->version('v1', function ($api) {

    $api->post('/auth/login', [
        'as' => 'api.auth.login',
        'uses' => 'Auth\AuthController@postLogin'
    ]);
    
});