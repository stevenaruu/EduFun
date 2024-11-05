<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Writer as WriterModel;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
        // php artisan db:seed --class=WriterSeeder
    public function run(): void
    {
        $name = array("Raka Putra Wicaksono", "Bia Mecca Annisa", "Abi Firmansyah");
        $categoryId = array(1, 2, 2);
        $specialist = array("Spesialis Interactive Multimedia", "Spesialis Software Engineering", "Spesialis Software Engineering");
        $image = array(
            "https://img.freepik.com/free-psd/3d-illustration-business-man-with-glasses_23-2149436194.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-psd/3d-illustration-person-with-glasses_23-2149436191.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-psd/3d-illustration-person-with-punk-hair-jacket_23-2149436198.jpg?t=st=1730539302~exp=1730542902~hmac=d81d55bb19a0cba67733612a29d3cb642ce607d045f3152f0951c7ceed3ed367&w=740"
        );

        for($i = 0; $i < 3; $i++){
            WriterModel::create([
                'name' => $name[$i],
                'category_id' => $categoryId[$i],
                'specialist' => $specialist[$i],
                'image' => $image[$i]
            ]);
        }
    }
}
