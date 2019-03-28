<?php

/* @var $this yii\web\View */

use yii\bootstrap\Nav;
use yii\widgets\LinkPager;

use common\models\Layout;
// $this->title = 'Partai';
$warna=Layout::find()->where(['id_layout'=>'1'])->one();
$slide='#'.$warna['warna_slider'];
$sliders = \common\models\Slider::find()
		 // ->where(['status' => 1])
		 ->orderBy('foto ASC')
		 ->limit(3)
		 ->all();
?>
<!-- Start Slider-->

<?php //foreach($warna as $warna);?>



<div style="margin:-15% -9.2% 3% -9.2%;background-color:<?= $slide ?>;min-height:610px;" class="hidden-xs">
	<!-- Start Corousel -->
	 <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin:0px;">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<!--<div class="item active">
				<img src="?= Yii::$app->homeUrl ?>images/fs.png" alt="Los Angeles" style="width:100%;">
			</div>-->
			<?php 			
				$no=1;
				foreach($sliders as $slider){
					if($no==1)
					{
						echo '<div class="item active">';
						echo '<img  src="images/post/'.$slider->foto.'" alt="img" style="width:100%;">';
						echo '</div>';
					}else{
						echo '<div class="item">';
						echo '<img  src="images/post/'.$slider->foto.'" alt="img" style="width:100%;">';
						echo '</div>';
					}
					$no++;
				}
			?>
			
		</div>
		

		
	</div>
	<!-- End Corousel -->
	
</div>

	
<!-- End Slider-->
<!-- Start Slider Mobile -->
<div style="margin:-16% -4.5% 3% -9.2%;background-color:<?= $slide ?>;min-height:510px;" class="hidden-md hidden-lg">
	<!-- Start Corousel -->
	 <div id="myCarousel" class="carousel slide col-md-12" data-ride="carousel" style="margin:0px;">
		<!-- Indicators -->
		<ol class="carousel-indicators">
		  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		  <li data-target="#myCarousel" data-slide-to="1"></li>
		  <li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<?php 			
				$no=1;
				foreach($sliders as $slider){
					if($no==1)
					{
						echo '<div class="item active">';
						echo '<img src="images/post/'.$slider->foto.'" alt="img" style="width:100%;">';
						echo '</div>';
					}else{
						echo '<div class="item">';
						echo '<img src="images/post/'.$slider->foto.'" alt="img" style="width:100%;">';
						echo '</div>';
					}
					$no++;
				}
			?>
		<!--ganti ke foreach-->
		  
		<!--ubah foto kamut.png ke bentuk mobilenya-->
		
		</div>
		
	  </div>
	<!-- End Corousel -->
	
	
</div>
<!-- End Slider Mobile -->