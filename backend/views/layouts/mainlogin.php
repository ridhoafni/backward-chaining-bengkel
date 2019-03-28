<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\BackAsset;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;

BackAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
	<meta charset="UTF-8">
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="author" content="pampersdry.info">
	<meta name="description" content="Adminre is a clean and flat backend and frontend theme build with twitter bootstrap">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="adminre/image/touch/apple-touch-icon-144x144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="adminre/image/touch/apple-touch-icon-114x114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="adminre/image/touch/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="adminre/image/touch/apple-touch-icon-57x57-precomposed.png">
	<link rel="shortcut icon" href="adminre/image/favicon.ico">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<!-- <body style="background-image: url('<?php echo Yii::getAlias('@web') ?>/backend/web/images/bg0.jpg'); background-size: cover;"> -->
<?php $this->beginBody() ?>
<!--mulai-->
	<section id="main" role="main">
		<!-- START Template Container -->
		<section class="container">
			<!-- START row -->
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4" >
					<!-- Brand -->
					<div align="center">
			<?php echo '<img src="'.Yii::getAlias('@web').'/backend/web/images/home.jpg" width="100%">'; ?>
		</div>
					<!--/ Brand -->

					<!-- Login form -->
					<?= $content?>
					<!-- Login form -->

					<hr><!-- horizontal line -->

					<!-- <p class="text-muted text-center">Don't have any account? <a class="semibold" href="page-register.html">Sign up to get started</a></p> -->
				</div>
			</div>
			<!--/ END row -->
		</section>
		<!--/ END Template Container -->
	</section>
<!--akhir-->
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
