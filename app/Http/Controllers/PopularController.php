<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category as CategoryModel;
use App\Models\CategoryDetail as CategoryDetailModel;

class PopularController extends Controller
{
    public function getPopularCategory() {
        $categories = CategoryModel::all();
        
        $details = CategoryDetailModel::with(['category', 'writer'])
        ->whereIn('rating', [4, 5])
        ->orderByRaw('rating DESC')
        ->paginate(3);

        return view('layouts.paginate-section', [
            'details' => $details,
            'categories' => $categories,
            'title' => 'Popular'
        ]);
    }
}
