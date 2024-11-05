<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category as CategoryModel;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    // php artisan db:seed --class=CategorySeeder
    public function run(): void
    {
        $categories = array("Interactive Multimedia", "Sofware Engineering");

        for($i = 0; $i < 2; $i++){
            CategoryModel::create([
                'name' => $categories[$i]
            ]);
        }
    }
}
