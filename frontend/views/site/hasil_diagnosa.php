<?php
use yii\helpers\Html;
use common\models\Kerusakan;
/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron">
    <h1><strong>Hasil Diagnosa</strong></h1>

<?php
	$hitung=0;
	if (isset($_GET['gejala'])):
	
	$no=1;
	foreach($data as $db):
	?>
	<?php 	// menangkap gejala[] yang ada di url
			$gejala=$_GET['gejala']; 
			$kalimat='-';
			// iterasi gejala yang di pilih
			for($i=0;$i<count($gejala);$i++):
			
				$kalimat .= $gejala[$i].',';
				// echo $gejala[$i].'<br>';
				// echo $kalimat.'<br>';
				//echo $kalimat;
			endfor;
			// mengambil nilai kaidah aturan yang ada di DB
			$cari=$db['kaidah_aturan'];
			// echo $cari;
			// di pecah menjadi kata berdasarkan ,
			$a=explode(',',$cari);
			// echo count($a);
			$sama=0;
			for($i=0;$i<count($a); $i++)
			{
				//echo $a[$i];
				//echo $kalimat;
				$posisix=strpos($kalimat,$a[$i]);

				 //echo $posisix;
				if (($posisix!='')and($posisix>=0))
				{
					$sama=$sama+1;
				}else {
					// echo '-';
				}
			}
			 echo $sama;
			if (count($a)==$sama)
			{
				$hitung=$hitung+1;
				//SELECT * FROM `kerusakan` WHERE `kode_kerusakan` LIKE 'K1
				$modelkerusakan = Kerusakan::findOne($db['kode_kerusakan']);
		
			}
			?>
<?php 
	$no++;
	endforeach;
	 

	$hitung;
?>	
<?php if($hitung>0): ?>
	<p></p>
	<p></p>
	<p></p>
	<h2 align="left"><strong><?php echo '<img src="'.Yii::getAlias('@web').'/images/found.gif" width="15%">'; ?>
	Kerusakan Ditemukan!!</strong></h2>
	
	<h2 align="justify">- Kerusakan -</h2>
	<table style="width:100%" class="table table-striped table-bordered">
	<?php
	$hitung=0;
	$no=1;
	foreach($data as $db):
	?>
	
			<?php 
			$gejala=$_GET['gejala']; 
			$kalimat='-';
			for($i=0;$i<count($gejala);$i++):
				$kalimat.=$gejala[$i].',';
				// echo $gejala[$i].'<br>';
			endfor;
			
			$cari=$db['kaidah_aturan'];
			$a=explode(',',$cari);
			// echo count($a);
			$sama=0;
			for($i=0;$i<count($a); $i++)
			{
				$posisix=strpos($kalimat,$a[$i]);
				if (($posisix!='')and($posisix>=0))
				{
					$sama=$sama+1;
				}else {
					// echo '-';
				}
			}
			// echo $sama;
			if (count ($a)==$sama)
			{
				$hitung=$hitung+1;
				//SELECT * FROM `kerusakan` WHERE `kode_kerusakan` LIKE 'K1
				$modelkerusakan = Kerusakan::findOne($db['kode_kerusakan']);
			?>
				<tr>
					<td align="justify">
						 <?php //echo $db['kode_kerusakan']; ?>
						<?php echo $modelkerusakan['ket_kerusakan']; ?>
						<?php //echo nl2br(htmlspecialchars($modelkerusakan->solusi)); ?>
					</td>
				</tr>
			<?php
			}
			?>
<?php 
	$no++;
	endforeach; 

	//echo $hitung;
?>	
</table>


	<h2 align="justify">- Solusi -</h2>
	<table style="width:100%" class="table table-striped table-bordered">
		<?php
		$no=1;foreach($data as $db):
		?>
		
				<?php 
				$gejala=$_GET['gejala']; 
				$kalimat='-';
				for($i=0;$i<count($gejala);$i++)
				{
					$kalimat.=$gejala[$i].',';
					//echo $gejala[$i].'<br>';
				}
				
				$cari=$db['kaidah_aturan'];
				$a=explode(',',$cari);
				// echo count($a);
				$sama=0;
				for($i=0;$i<count($a); $i++)
				{
					$posisix=strpos($kalimat,$a[$i]);
					if (($posisix!='')and($posisix>=0))
					{
						$sama=$sama+1;
					}else {
						// echo '-';
					}
				}
				// echo $sama;
				if (count ($a)==$sama)
				{
					//SELECT * FROM `kerusakan` WHERE `kode_kerusakan` LIKE 'K1
					$modelkerusakan = Kerusakan::findOne($db['kode_kerusakan']);
				?>
					<tr>
						<td align="justify">
							 <?php //echo $db['kode_kerusakan']; ?>
							 <?php //echo $modelkerusakan['ket_kerusakan']; ?>
							 <?php echo nl2br(htmlspecialchars($modelkerusakan->solusi)); ?>
							
							
						</td>
					</tr>
				<?php
				}
				?>
	<?php $no++;endforeach; ?>	
	</table>
        <p class="lead"></p>
		<?php 
			$gejala=$_GET['gejala']; 
			$kalimat='';
			for($i=0;$i<count($gejala);$i++)
			{
				$kalimat.=$gejala[$i].',';
				//echo $gejala[$i].'<br>';
			}
			
			//echo $kalimat.'-';
			// $kalimat="duniailkom.com";
			$cari="G1,G2,G3,G4";
			$posisi=strpos($kalimat,$cari);
			//echo $posisi;
			

else:
	?>


	<h2 align="center">
	<strong>
	<?php echo '<img src="'.Yii::getAlias('@web').'/images/found.gif" width="15%">'; ?>
	<p>
	Maaf, Gejala Kurang Mendukung!!
	</p>
	</strong>
	</h2>

	<?php
endif;

else:
	?>


	<h2 align="center">
	<strong>
	<?php echo '<img src="'.Yii::getAlias('@web').'/images/found.gif" width="15%">'; ?>
	<p>
	Masukkan Gejala Motor Anda!!
	</p>
	</strong>
	</h2>

	<?php
endif;
		?>
		

		<?= Html::a('kembali', ['ceklis-gejala'], ['class' => 'btn btn-lg btn-success']) ?>
    </div>
</div>
