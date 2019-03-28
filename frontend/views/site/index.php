<?php
use yii\helpers\Html;
/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron">
    	<div align="center">
			<?php echo '<img src="'.Yii::getAlias('@web').'/images/home.jpg" width="100%">'; ?>
		</div>
        
        <!-- <h1>SELAMAT DATANG</h1>

        <p class="lead">Di Sistem Pakar Pendeteksi Kerusakan Motor Matic Injeksi</p> -->
        <p></p>
        <p></p>
        <p align="justify">
        	    Sepeda motor matic  injeksi  saat  ini merupakan jenis kendaraan yang paling  di  minati karena  mudah 
        	untuk di kendarai, ekonomis  dan nyaman.
        	Sistem Pakar Pendeteksi Kerusakan Motor Matic Injeksi membantu masyarakat awam untuk mendeteksi kerusakan dini
        	sepeda motor sendiri sebelum dilakukan perbaikan oleh mekanik.
        </p>
		<?= Html::a('Cek Gejala Motor Anda', ['ceklis-gejala'], ['class' => 'btn btn-lg btn-success']) ?>
    </div>
</div>
