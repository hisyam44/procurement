<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $this->call('UserTableSeeder');
        $this->call('UnitsTableSeeder');
        $this->call('ItemsTableSeeder');
        $this->call('AccountingCategoryTableSeeder');
        $this->call('SuppliersTableSeeder');
        $this->call('OrdersTableSeeder');
        $this->call('OrderItemTableSeeder');
    }
}
