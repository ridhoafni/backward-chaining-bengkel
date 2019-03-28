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
		<div class="panel-body" style="background-color:white">
			<!-- Alert message -->
			
			<div class="form-group">
				
				<?= $form->field($model, 'username', [
					'inputTemplate' => '<div class="form-stack has-icon pull-left">{input}<i class="ico-user2 form-control-icon"></i></div>'
				])->textInput(['autofocus' => true,'class'=>'form-control text-input','placeholder'=>'Username'])->label(false) ?>
				
				<?= $form->field($model, 'password', [
					'inputTemplate' => '<div class="form-stack has-icon pull-left">{input}<i class="ico-lock2 form-control-icon"></i></div>'
				])->passwordInput(['class'=>'form-control text-input','placeholder'=>'Password'])->label(false) ?>
			</div>

			<!-- Error container -->
			<div id="error-container"class="mb15"></div>
			<!--/ Error container -->

			<div class="form-group">
				<div class="row">
					<div class="col-xs-6">
						<div class="checkbox custom-checkbox">  
							<input type="checkbox" name="remember" id="remember" value="1">  
							<label for="remember">&nbsp;&nbsp;Remember me</label>   
						</div>
					</div>
					<div class="col-xs-6 text-right">
						<a href="javascript:void(0);">Lost password?</a>
					</div>
				</div>
			</div>
			<div class="form-group nm">
				<?= Html::submitButton('Login', ['class' => 'btn btn-block btn-success', 'name' => 'Login']) ?>
			</div>
		</div>
	<?php ActiveForm::end(); ?>
	
    
</div>
