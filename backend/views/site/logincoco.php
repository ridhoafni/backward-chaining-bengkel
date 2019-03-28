<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-login">

	<?php $form = ActiveForm::begin(['id' => 'login-form']); ?>
			<!--?= $form->field($model, 'username', [
				'inputTemplate' => '<div class="form-group login-input"><i class="fa fa-user overlay"></i>{input}</div>'
			]); ?-->
			
			<?= $form->field($model, 'username', [
				'inputTemplate' => '<div class="form-group login-input"><i class="fa fa-user overlay"></i>{input}</div>'
			])->textInput(['autofocus' => true,'class'=>'form-control text-input','placeholder'=>'Username'])->label(false) ?>
		
			<?= $form->field($model, 'password', [
				'inputTemplate' => '<div class="form-group login-input"><i class="fa fa-key overlay"></i>{input}</div>'
			])->passwordInput(['class'=>'form-control text-input','placeholder'=>'********'])->label(false) ?>
		
		
		<div class="row">
			<div class="col-sm-6">
				<?= Html::submitButton('Login', ['class' => 'btn btn-success btn-block', 'name' => 'Login']) ?>
			</div>
			<div class="col-sm-6">
				<a href="register.html" class="btn btn-default btn-block">Register</a>
			</div>
		</div>
	<?php ActiveForm::end(); ?>
	
    
</div>
