
<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Penerima; 
use dosamigos\ckeditor\CKEditor;
// use kartik\date\DatePicker;
use dosamigos\datepicker\DatePicker;


// use yii\widget\DatePicker;
// use mihaildev\ckeditor\CKEditor;
// use mihaildev\elfinder\ElFinder;


/* @var $this yii\web\View */
/* @var $model common\models\Post */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="post-form">
	<div class="">
		<!-- Form horizontal layout striped -->
		<?php $form = ActiveForm::begin(); ?>

			<?= $form->field($model, 'nama_penerima')->textInput(['maxlength' => true,'placeholder'=>'Nama Penerima','class'=>'form-control'])->label(false) ?>
			<?= $form->field($model, 'nama_toko')->textInput(['maxlength' => true,'placeholder'=>'Nama Toko','class'=>'form-control'])->label(false) ?>
			
			<?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
				
		<?php ActiveForm::end(); ?>
		<!--/ Form horizontal layout striped -->
	</div>
</div>



