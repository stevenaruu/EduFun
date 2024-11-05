<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $table = 'category';
    protected $guarded = [];

    public function category_detail() {
        return $this->hasMany(CategoryDetail::class);
    }

    public function writer() {
        return $this->hasOne(Writer::class);
    }
}
