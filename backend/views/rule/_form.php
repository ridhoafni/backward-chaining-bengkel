 <?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Rule; 
use dosamigos\ckeditor\CKEditor;
use kartik\date\DatePicker;
?>
<div class="post-form">
	<div class="col-md-12">
		<!-- Form horizontal layout striped -->
		<?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data','class'=>'form-horizontal panel panel-default']]) ?>

			<div class="panel-heading">
				<h3 class="panel-title">Rule </h3>
			</div>               
			<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-2 control-label">Kode Rule</label>
					<div class="col-sm-6">
						<?= $form->field($model, 'kode_rule')->textInput(['maxlength' => true,'placeholder'=>'Kode rule','class'=>'form-control'])->label(false) ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Kaidah Aturan</label>
					<div class="col-sm-6">
						<?= $form->field($model, 'kaidah_aturan')->textInput(['maxlength' => true,'placeholder'=>'Kaidah Aturan','class'=>'form-control'])->label(false) ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Kode Kerusakan</label>
					<div class="col-sm-6">
						<?= $form->field($model, 'kode_kerusakan')->textInput(['maxlength' => true,'placeholder'=>'Kode Kerusakan','class'=>'form-control'])->label(false) ?>
					</div>
				</div>
				</div>
				
				
				
			</div>
			<div class="panel-footer">
				<?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
				<button type="reset" class="btn btn-inverse">Reset</button>
			</div>
		<?php ActiveForm::end(); ?>
		<!--/ Form horizontal layout striped -->
	</div>
</div>