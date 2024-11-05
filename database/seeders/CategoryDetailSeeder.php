<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Category as CategoryModel;
use App\Models\CategoryDetail as CategoryDetailModel;
use App\Models\Writer as WriterModel;

class CategoryDetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    // php artisan db:seed --class=CategoryDetailSeeder
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $writers = WriterModel::all();
        $image = array(
            "https://img.freepik.com/free-vector/background-realistic-abstract-technology-particle_23-2148431735.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/realistic-background-futuristic-style_23-2149129125.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/network-mesh-wire-digital-technology-background_1017-27428.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/copy-space-blue-circuits-digital-background_23-2148821699.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/gradient-technology-symbols-background_23-2149110134.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/abstract-technological-background_23-2148897676.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/white-technology-background_23-2148403782.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/gradient-technology-futuristic-background_23-2149131656.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148902184.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid",
            "https://img.freepik.com/free-vector/gradient-technology-futuristic-background_23-2149122416.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid"
        );

        for($i = 0; $i < 20; $i++) {
            $randomWriter = $writers->random();

            CategoryDetailModel::create([
                'category_id' => $randomWriter->category_id,
                'title' => $faker->sentence,
                'image' => $image[array_rand($image)],
                'description' => $faker->paragraph,
                'writer_id' => $randomWriter->id,
                'date' => $faker->date('d F Y'),
                'rating' => random_int(1, 5)
            ]);
        }
    }
}
