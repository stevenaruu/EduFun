<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryDetail extends Model
{
    use HasFactory;

    protected $table = 'category_detail';
    protected $guard=[];

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function writer() {
        return $this->belongsTo(Writer::class);
    }
}
