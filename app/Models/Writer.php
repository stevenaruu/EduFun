<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Writer extends Model
{
    use HasFactory;

    protected $table = 'writer';
    protected $guarded = [];

    public function category_detail() {
        return $this->hasMany(CategoryDetail::class);
    }

    public function category() {
        return this->belongsTo(Category::class);
    }
}
