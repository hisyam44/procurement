<?php

use Illuminate\Database\Seeder;
use App\Purchase;
use App\Request;

class PurchaseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $purchase = new Purchase();
        $purchase->unit_id  = 1;
        $purchase->type  = "BD";
        $purchase->department = "Plant";

        $purchase->mol  = "214432";
        $purchase->km_hm  = 0;
        $purchase->warehouse_manager  = "Slamet Riyadi";
        $purchase->maintenance_manager  = "Toni Dirgantoro";
        $purchase->project_manager  = "Doni Sumarno";

        $purchase->purpose  = "The Purpose is to fix something, with something";
        $purchase->save();

        $request = new Request();
        $request->no = "102543";
        $request->component = "GH8616";
        $request->description = "Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. ";
        $request->qty = "3";
        $request->satuan = "pcs";
        $request->model = "WER3245";

        $request->damage_description = "Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa,";
        $purchase->requests()->save($request);

        $request = new Request();
        $request->no = "102534";
        $request->component = "RTW2137";
        $request->description = "Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. ";
        $request->qty = "2";
        $request->satuan = "pcs";
        $request->model = "UIO8769";

        $request->damage_description = "Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa,";
        $purchase->requests()->save($request);

    }
}
