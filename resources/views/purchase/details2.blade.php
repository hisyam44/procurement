
<style type="text/css">
    .page-break{
        page-break-after: always;
    }
    table > tbody > tr > td{
        padding: 1px 5px;
    }
    .bold{
        font-weight: bold;
    }
</style>
<table class="table table-bordered" id="tableData" style="margin: 0 auto;width: 100%;">
            <tbody>
                <tr>
                    <td colspan="10">
                        <h3 style="text-align: center;">PURCHASE REQUESTS</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="bold">Department </td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->department }}</td>
                    <td colspan="2" class="bold">Type </td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->type }} </td>
                </tr>
                <tr>
                    <td colspan="2" class="bold">Purchase Request No</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->no }} </td>
                    <td colspan="2" class="bold">KM/HM</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->km_hm }} </td>
                </tr>
                <tr>
                    <td colspan="2" class="bold">Date</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->created_at->format('d-m-Y')}}</td>
                    <td colspan="2" class="bold">MOL</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->mol }}</td>
                </tr>
                <tr>
                    <td colspan="2" class="bold">Unit Code</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->unit->code }}</td>
                    <td colspan="5"></td> 
                </tr>  
                <tr>
                    <td colspan="10">
                        <table border="1" width="100%" style="margin:20px 0px">
                            <tr class="bold" style="background: #ddd">
                                <td>No.</td>
                                <td colspan="2">Part Number</td>
                                <td>Component</td>
                                <td>Part Description</td>
                                <td>QTY</td>
                                <td>UOM</td>
                                <td>Date of Requirements</td>
                                <td>Remark</td>
                            </tr>
                            @foreach($purchase->requests as $index => $request)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td colspan="2">{{ $request->part_no->code }}</td>
                                <td>{{ $request->component }}</td>
                                <td>{{ $request->description }}</td>
                                <td>{{ $request->qty }}</td>
                                <td>{{ $request->part_no->item->uom }}</td>
                                <td>{{ $request->model }}</td>
                                <td>{{ $request->damage_description }}</td>
                            </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="bold">Warehouse in Charge</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->warehouse_manager }}</td>
                    <td colspan="2" class="bold">Purpose</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->purpose }}</td>
                </tr>
                <tr>
                    <td colspan="2" class="bold">Maintenance Manager</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->maintenance_manager }}</td>
                    <td colspan="5"></td>
                </tr>
                <tr>
                    <td colspan="2" class="bold">Project Manager</td> 
                    <td>:</td> 
                    <td colspan="2">{{ $purchase->project_manager }}</td>
                    <td colspan="5"></td>
            </tbody>
        </table>