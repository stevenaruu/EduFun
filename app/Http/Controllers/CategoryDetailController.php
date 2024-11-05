<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category as CategoryModel;
use App\Models\CategoryDetail as CategoryDetailModel;
use App\Models\Writer as WriterModel;

class CategoryDetailController extends Controller
{
    public function index() {
        $categories = CategoryModel::all();
        $details = CategoryDetailModel::with(['category', 'writer'])->get();
        return view('layouts.home', [
            'details' => $details,
            'categories' => $categories
        ]);
    }
    
    public function getCategoryById($id) {
        $categoryName = CategoryModel::where('id', $id)
        ->pluck('name')
        ->first();

        $categories = CategoryModel::all();
        
        $details = CategoryDetailModel::with(['category', 'writer'])
        ->where('category_id', $id)
        ->get();

        return view('layouts.section', [
            'details' => $details,
            'categories' => $categories,
            'title' => $categoryName
        ]);
    }

    public function getDetailById($id) {
        $categories = CategoryModel::all();

        $detail = CategoryDetailModel::with(['category', 'writer'])
        ->where('id', $id)
        ->get()
        ->first();

        $title = $detail->category->name;

        $categories = CategoryModel::all();

        return view('contents.detail', [
            'categories' => $categories,
            'detail' => $detail, 
            'title' => $title
        ]);
    }
}
