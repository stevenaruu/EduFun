<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category as CategoryModel;

class AboutUsController extends Controller
{
    public function index() {
        $categories = CategoryModel::all();

        return view('contents.about-us', ['categories' => $categories]);
    }
}
