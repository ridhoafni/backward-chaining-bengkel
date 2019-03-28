
<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\bootstrap\Modal; 
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Penerima';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row" >


	<div class="col-md-12">
		<p>
			<!--Html::button('Create Penerima', ['value'=>'../penerima/create','class' => 'btn btn-success','id'=>'modalButton']) -->
			<?= Html::a('Tambah Penerima', ['create'],['class' => 'btn btn-success']) ?>
		</p>
		<?php
			Modal::begin([
				'header'=>'<h4>Penerima</h4>',
				'id'=>'modal',
				'size'=>'modal-lg',
				// 'closeButton' => [
					// 'id'=>'close-button',
					// 'class'=>'close',
					// 'data-dismiss' =>'modal',
					// ],
				'clientOptions' => [
					'backdrop' => true, 'keyboard' => true
					]

			]);
			echo "<div id='modalContent'></div>";
			Modal::end();
		?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>Penerima</strong> DataTable</h3>
			</div>
			<table class="table table-striped table-bordered" id="zero-configuration">
				<thead>
					<tr>
						<th>No</th>
						<th>Nama Penerima</th>
						<th>Nama Toko</th>
						<th>Create Date</th>
						<th>Aksi</th>
						<?php 
							// 'foto',
							// 'create_time:datetime',
							// 'update_time:datetime',
							// 'user_id',
						?>
					</tr>
				</thead>
				<tbody>		
						
						<?php 
						$no=1;foreach($model as $db):
						?>
						
						<tr>
							<td align="center"><?= $no;?></td>
							<td ><?= $db['nama_penerima'];?></td>
							<td ><?= $db['nama_toko'];?></td>
							<td><?= $db['created_date'];?></td>
							
							<td>
							<?= Html::a('<i class="ico-pencil5"></i>', ['/penerima/update','id'=>$db['id_penerima']], ['class' => 'btn btn-info']) ?>
							<?= Html::a('<i class="ico-trash"></i>', ['/penerima/delete', 'id' => $db['id_penerima']], [
									'class' => 'btn btn-danger',
									'data' => [
										'confirm' => 'anda yakin mau menghapus penerima "'.$db['nama_penerima'].'"?',
										'method' => 'post',
									]
								]);
							?>
							

							</td>
						</tr>
						<?php $no++;endforeach; ?>
						
							
							
						
				</tbody>
			</table>

		</div>

	</div>
</div>



