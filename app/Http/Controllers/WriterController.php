<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer as WriterModel;
use App\Models\Category as CategoryModel;
use App\Models\CategoryDetail as CategoryDetailModel;

class WriterController extends Controller
{
    public function getWriters() {
        $writers = WriterModel::all();
        $categories = CategoryModel::all();

        return view('layouts.writers', [
            'categories' => $categories,
            'writers' => $writers,
            'title' => 'Our Writers:'
        ]);
    }

    public function getCourseByWriter($id) {
        $writer = WriterModel::where('id', $id)->first();
        
        $categories = CategoryModel::all();

        $details = CategoryDetailModel::with(['category', 'writer'])
        ->where('writer_id', $id)
        ->where('category_id', $writer->category_id)
        ->get();
        
        return view('layouts.section', [
            'categories' => $categories,
            'writer' => $writer,
            'details' => $details
        ]);
    }
}
