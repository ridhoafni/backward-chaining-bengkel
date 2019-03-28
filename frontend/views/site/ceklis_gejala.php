<?php
use yii\helpers\Html;
/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>- Gejala Kerusakan -</h1>

        <!-- <p class="lead">Ceklis gejala yang timbul dimotor anda</p> -->

	<br></br> 
	<form action="<?php echo Yii::$app->getHomeUrl(); ?>site/hasil-diagnosa">
	<table style="width:100%" class="table table-striped table-bordered">
	<tr>
		<th style="text-align: center;"> Nomor</th>
		<th style="text-align: center;">Gejala</th>
		<th style="text-align: center;">Pilih</th>
	</tr>
	<?php
	$no=1;foreach($data as $db):
		$ket='';
	?>
	<tr>
		<td style="text-align: center;"><?=$no;?></td>
		<td ><?= $db['ket_gejala'];?></td>
		<td >
		  <input type="checkbox" name="gejala[]" value="<?= $db['kode_gejala'];?>"><br>
		</td>
	</tr>
<?php $no++;endforeach; ?>	
</table>
<br><input type="submit" value="Lihat Hasil Diagnosa" class ="btn btn-lg btn-success"></br>
</form>
    </div>
</div>

	