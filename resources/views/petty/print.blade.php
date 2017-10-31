<style type="text/css">
	td{
		border:1px solid #000;
		padding: 5px;
	}
</style>
<table class="table table-striped">
    <thead>
    	<tr>
    		<td colspan="12">
    			<h2 style="text-align: center;">Petty Cash Report</h2>
    		</td>
    	</tr>
        <tr style="font-weight: bold;text-align: center;">
            <td>Date</td>
            <td>100.000</td>
            <td>50.000</td>
            <td>20.000</td>
            <td>10.000</td>
            <td>5000</td>
            <td>2000</td>
            <td>1000</td>
            <td>500</td>
            <td>200</td>
            <td>100</td>
            <td>Total</td>
        </tr>
    </thead>
    <?php
        $t100rb = 0;
        $t50rb = 0;
        $t20rb = 0;
        $t10rb = 0;
        $t5rb = 0;
        $t2rb = 0;
        $t1rb = 0;
        $t500r = 0;
        $t200r = 0;
        $t100r = 0;
        $total = 0;
    ?>
    <tbody>
        @foreach($petties as $petty)
        <tr>
            <td>{{ $petty->created_at->format('d-m-Y') }}</td>
            <td>{{ $petty->t100rb }}</td>
            <td>{{ $petty->t50rb }}</td>
            <td>{{ $petty->t20rb }}</td>
            <td>{{ $petty->t10rb }}</td>
            <td>{{ $petty->t5rb }}</td>
            <td>{{ $petty->t2rb }}</td>
            <td>{{ $petty->t1rb }}</td>
            <td>{{ $petty->t500r }}</td>
            <td>{{ $petty->t200r }}</td>
            <td>{{ $petty->t100r }}</td>
            <td>{{ $petty->total }}</td>
            <?php
                $t100rb += $petty->t100rb;
                $t50rb += $petty->t50rb;
                $t20rb += $petty->t20rb;
                $t10rb += $petty->t10rb;
                $t5rb += $petty->t5rb;
                $t2rb += $petty->t2rb;
                $t1rb += $petty->t1rb;
                $t500r += $petty->t500r;
                $t200r += $petty->t200r;
                $t100r += $petty->t100r;
                $total += $petty->total;
            ?>
        </tr>
        @endforeach
        <tr>
            <td>Total</td>
            <td>{{ $t100rb }}</td>
            <td>{{ $t50rb }}</td>
            <td>{{ $t20rb }}</td>
            <td>{{ $t10rb }}</td>
            <td>{{ $t5rb }}</td>
            <td>{{ $t2rb }}</td>
            <td>{{ $t1rb }}</td>
            <td>{{ $t500r }}</td>
            <td>{{ $t200r }}</td>
            <td>{{ $t100r }}</td>
            <td>{{ $total }}</td>
        </tr>
    </tbody>
</table>