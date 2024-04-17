<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Student;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        for($i=0;$i<10;$i++){
            Student::query()->create([
                'code'=>fake()->randomDigit() . fake()->text(9),
                'name'=>fake()->text(50),
                'email'=>fake()->email(),
                'phone'=>fake()->phoneNumber(),
                'image'=>fake()->imageUrl()
            ]);
        }
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
