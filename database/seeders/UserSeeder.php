<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'id_user' => '2',
            'nama' => 'Saya Cakep',
            'email' => 'sayacakep@mail.com',
            'username' => 'sayacakep',
            'password' => Hash::make('sayacakep'),
            'akses_level' => 'Admin',
            'tanggal_post' => Carbon::now(),
            'tanggal' => Carbon::now(),
        ]);
    }
}
