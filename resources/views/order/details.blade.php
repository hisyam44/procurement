
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
        <table class="table table-bordered" id="tableData" style="margin: 0 auto;width: 100%;font-size: 10;">
            <tbody>
                <tr>
                    <td colspan="5">
                        <h3 style="text-align: center;">Purchase Order</h3>
                    </td>
                </tr>
                <tr>
                    <td rowspan="4" width="20%">{{ $order->address }}</td>
                    <td rowspan="4" width="20%"></td>
                    <td width="20%"></td>
                    <td class="bold">P.O. No.</td>
                    <td width="20%">{{ $order->no }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td class="bold">P.R. No.</td>
                    <td>{{ $order->reference_no }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td class="bold">Date</td>
                    <td>{{ $order->created_at }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td class="bold">Supplier ID</td>
                    <td>{{ $order->supplier->no }}</td>
                </tr>
                <tr>
                    <td class="bold">Supplier</td>
                    <td class="bold">{{ $order->supplier->name }}</td>
                    <td></td>
                    <td class="bold">Dispatch To</td>
                    <td class="bold">{{ $order->dispatch_to }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td>{{ $order->supplier->address }}</td>
                    <td></td>
                    <td></td>
                    <td>{{ $order->dispatch_address }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td>Attn : {{ $order->supplier->attn }}</td>
                    <td></td>
                    <td></td>
                    <td>Attn : {{ $order->dispatch_name }}</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <table style="width: 100%;font-size: 10;" border="1">
                            <tr class="bold" style="background: #ddd">
                                <td>Payment Term</td>
                                <td>Incoterms</td>
                                <td>Shipped By</td>
                                <td>Delivery Date</td>
                            </tr>
                            <tr>
                                <td>{{ $order->payment_term }}</td>
                                <td>{{ $order->incoterms }}</td>
                                <td>{{ strtoupper($order->ship_by) }}</td>
                                <td>{{ $order->delivery_date }}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <table style="width: 100%;font-size: 10;" border="1">
                            <tr class="bold" style="background: #ddd">
                                <td>QTY</td>
                                <td>Item Code</td>
                                <td>Part No</td>
                                <td>Description</td>
                                <td>Unit Price</td>
                                <td>Line Total</td>
                            </tr>
                            @foreach($order->orderitem as $itemorder)
                            <tr>
                                <td>{{ $itemorder->qty }}</td>
                                <td>{{ $itemorder->item->item->item_no }}</td>
                                <td>{{ $itemorder->item->code }}</td>
                                <td>{{ $itemorder->description }}</td>
                                <td width="20%">Rp. <span>{{ number_format($itemorder->unit_price) }}</span></td>
                                <td width="20%">Rp. <span style="float:right">{{ number_format($itemorder->unit_price*$itemorder->qty) }}</span></td>
                            </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bold">Sub Total</td>
                    <td>Rp. <span style="float:right;padding:0px 7px;">{{ number_format($order->sub_total) }}</span></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bold">Discount</td>
                    <td>Rp. <span style="float:right;padding:0px 7px;">{{ number_format($order->diskon) }}</span></td>
                </tr>
                <tr>
                    <td class="bold">Additonal Terms & Conditions: </td>
                    <td></td>
                    <td></td>
                    <td class="bold">Tax</td>
                    <td>Rp. <span style="float:right;padding:0px 7px;">{{ number_format($order->tax) }}</span></td>
                </tr>
                <tr>
                    <td colspan="2"><b>Warranty : </b>{{ $order->warranty }}</td>
                    <td></td>
                    <td class="bold">Total</td>
                    <td class="bold">Rp. <span style="float:right;padding:0px 7px;">{{ number_format($order->total) }}</span></td>
                </tr>
                <tr style="border-top:1px solid #000;">
                    <td colspan="5" class="bold"><hr>Instructions :</td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="3">
                        <ol>
                            <li>Please send two copies of your invoice</li>
                            <li>All documents and correspondance should indicate this PO no.</li>
                            <li>Enter this order in accordance with the prices, terms, delivery, and specifications listed above.</li>
                            <li>Please notifiy us immediately if you are unable to ship as specified.</li>
                            <li>Send all correspondence to: PT Sumber Mitra Jaya 51 Jl Raya Pekajangan Kec Kedungwuni, Kab Pekalongan Jawa Tengah 51173</li>
                        </ol>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><hr>Authorized by {{ $order->author }}</td>
                    <td><hr>Prepared by </td>
                </tr>
                <tr>
                    <td></td>
                    <td><hr>Acknowledged by {{ $order->diketahui }}</td>
                    <td><hr>Accepted by </td>
                </tr>
            </tbody>
        </table>