<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect('/log-viewer');
});