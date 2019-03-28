<?php
use yii\helpers\Html;
/* @var $this yii\web\View */

$this->title = 'Contoh';
?>
<!--1) include file jquery.min.js dan higchart.js-->
<script type="text/javascript" src="<?php echo Yii::$app->getHomeUrl(); ?>js/jquery.min.js"></script>
<script src="<?php echo Yii::$app->getHomeUrl(); ?>js/highcharts.js"></script>



<div class="site-index">

    <div class="jumbotronx" align="center">
    	<div align="center">
			<?php echo '<img src="'.Yii::getAlias('@web').'/backend/web/images/home.jpg" width="100%">'; ?>
		</div>
        
        <p></p>
    </div>
    <div class="jumbotronx" align="center">
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-12">				
				<table class="table table-striped table-bordered" id="">
					<tbody>		
							<p align="justify">
							<!-- teks isi -->
							</p>
						
						
					</tbody>
				</table>
            </div>

            <div class="col-lg-6">				

<div id="piex" style="min-width: 410px; height: 400px; max-width: 600px; margin: 0 auto"></div>

				<!--grafik akan ditampilkan disini -->
				<div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>


            </div>
        </div>

    </div>
</div>
