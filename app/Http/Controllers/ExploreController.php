<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Tweet;

class ExploreController extends Controller
{
    public function index()
    {
        return view('explore.index', [
            'tweets' => Tweet::paginate(50),
        ]);
    }
}
