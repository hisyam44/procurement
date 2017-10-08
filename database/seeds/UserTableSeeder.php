<?php

use Illuminate\Database\Seeder;

use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user1 = new User();
        $user1->name = "hisyam";
        $user1->email = "hisyam@hisyam.com";
        $user1->password = bcrypt("qweasd");
        $user1->role = "dev";
        $user1->department = "None";
        $user1->save();
        
        $user1 = new User();
        $user1->name = "admin 1";
        $user1->email = "admin1@admin.com";
        $user1->password = bcrypt("qweasd");
        $user1->role = "admin";
        $user1->department = "None";
        $user1->save();

    }
}
