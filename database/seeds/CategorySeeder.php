<?php

use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      DB::table('categories')->insert([
       'name'=>'Ingeniería de Software',
       'icon'=>'software-engineering.png',
      ]);
      DB::table('categories')->insert([
       'name'=>'FrontEnd',
       'icon'=>'fontend.png',
      ]);
      DB::table('categories')->insert([
       'name'=>'BackEnd',
       'icon'=>'backend.png',
      ]);
      DB::table('categories')->insert([
       'name'=>'DEvOps',
       'icon'=>'devops.png',
      ]);
    }
}
