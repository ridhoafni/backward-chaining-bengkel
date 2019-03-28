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
//$user=Yii::$app->user->identity->username;
$user=Yii::$app->user->identity->username;
// $session = Yii::$app->session;

$level=Yii::$app->user->identity->level_user;
$id=Yii::$app->user->identity->id;
$profil = \common\models\User::find()
->where(['id' => $id])
// ->orderBy('text DESC')
// ->limit(3)
->one();

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    
    <?= Html::csrfMetaTags() ?>
    <meta charset="utf-8">
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">>
    <title><?= Html::encode($this->title) ?></title>
    <meta name="author" content="pampersdry.info">
    <meta name="description" content="Adminre is a clean and flat backend and frontend theme build with twitter bootstrap">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <link rel="shortcut icon" href="<?php echo Yii::$app->getHomeUrl(); ?>favicon.png" type="image/x-icon" />
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
<!--modal-->

<!--modal-->
<!--mulai-->
        <!-- START Template Header -->
        <header id="header" class="navbar" style="margin-top:-20px">
            <!-- START navbar header -->
            <div class="navbar-header">
                <!-- Brand -->
                <a class="navbar-brand" href="javascript:void(0);">
                    <span  class="logo-figure"></span>
                    <span class="logo-textx" style="color:#fff;">Sistem Pakar              </span>
                </a>
                <!--/ Brand -->
            </div>
            <!--/ END navbar header -->

            <!-- START Toolbar -->
            <div class="navbar-toolbar clearfix">
                <!-- START Left nav -->
                <ul class="nav navbar-nav navbar-left">
                    <!-- Sidebar shrink -->
                    <li class="hidden-xs hidden-sm">
                        <a href="javascript:void(0);" class="sidebar-minimize" data-toggle="minimize" title="Minimize sidebar">
                            <span class="meta">
                                <span class="icon"></span>
                            </span>
                        </a>
                    </li>
                    <!--/ Sidebar shrink -->

                    <!-- Offcanvas left: This menu will take position at the top of template header (mobile only). Make sure that only #header have the `position: relative`, or it may cause unwanted behavior -->
                    <li class="navbar-main hidden-lg hidden-md hidden-sm">
                        <a href="javascript:void(0);" data-toggle="sidebar" data-direction="ltr" rel="tooltip" title="Menu sidebar">
                            <span class="meta">
                                <span class="icon"><i class="ico-paragraph-justify3"></i></span>
                            </span>
                        </a>
                    </li>
                    <!--/ Offcanvas left -->
                </ul>
                <!--/ END Left nav -->

                <!-- START navbar form -->
                <div class="navbar-form navbar-left dropdown" id="dropdown-form">
                    <form action="" role="search">
                        <div class="has-icon">
                            <input type="text" class="form-control" placeholder="Search application...">
                            <i class="ico-search form-control-icon"></i>
                        </div>
                    </form>
                </div>
                <!-- START navbar form -->

                <!-- START Right nav -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Profile dropdown -->
                    <li class="dropdown profile">
                        <a href="javascript:void(0);" class="dropdown-toggle dropdown-hover" data-toggle="dropdown">
                            <span class="meta">
                                <span class="avatar">

                                    <?php
                                    // $profil=User::model()->find('user=:user',array(':user'=>$user),array('class'=>'media-object img-circle')); 
                                    if(!empty($profil->foto)) {
                                        // echo CHtml::image(Yii::app()->request->baseUrl.'/images/no-image.png','Image',array('class'=>'media-object img-circle'));
                                        echo '<img src="'.Yii::getAlias('@web').'/images/user/'.$profil->foto.'" class="img-circle">';
                                    }else{
                                        echo '<img src="'.Yii::getAlias('@web').'/images/user/user.jpg" class="img-circle">';
                                        // echo CHtml::image(Yii::app()->request->baseUrl.'/images/'.$profil->image,'Image',array('class'=>'media-object img-circle')) ;
                                    }
                                    ?>
                                </span>
                                <span class="text hidden-xs hidden-sm pl5"><?= $user ?></span>
                                <span class="caret"></span>
                            </span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            
                           
                            <li><?= Html::a('<span class="icon"><i class="ico-user-plus2"></i></span>Profil Saya ', ['/site/profile']) ?></li>
                            <!--<li><a href="javascript:void(0);"><span class="icon"><i class="ico-cog4"></i></span> Profile Setting</a></li>-->
                            <!---<li><a href="javascript:void(0);"><span class="icon"><i class="ico-question"></i></span> Help</a></li>-->
                            <li class="divider"></li>
                            <li><?= Html::a('<span class="icon"><i class="ico-exit"></i></span>LogOut ', ['/site/logout']) ?></li>
                        </ul>
                    </li>
                    <!-- Profile dropdown -->

                    <!-- Offcanvas right This menu will take position at the top of template header (mobile only). Make sure that only #header have the `position: relative`, or it may cause unwanted behavior -->
                    
                    <!--/ Offcanvas right -->
                </ul>
                <!--/ END Right nav -->
            </div>
            <!--/ END Toolbar -->
        </header>
        <!--/ END Template Header -->

        <!-- START Template Sidebar (Left) -->
        <aside class="sidebar sidebar-left sidebar-menu">
            <!-- START Sidebar Content -->
            <section class="content slimscroll">
                <h5 class="heading">Main Menu</h5>
                <!-- START Template Navigation/Menu -->
                <ul class="topmenu topmenu-responsive" data-toggle="menu">
                    <li class="active">
                       
                        <?= Html::a('<span class="figure"><i class="ico-dashboard2"></i></span>&nbsp<span class="text">Dashboard</span>', ['/site/index'],array('class'=>'active')) ?>
                        <!-- START 2nd Level Menu -->
                        
                        <!--/ END 2nd Level Menu -->
                    </li>
                    
                    
                    <?php if(($level=='User')OR($level=='Admin')):?>
                    
                    <li class=''>
                        <?= Html::a('<span class="figure"><i class="ico-book3"></i></span>&nbsp<span class="text">Gejala</span>', ['/gejala/index']) ?>
                    </li>
                        <li class=''>
                        <?= Html::a('<span class="figure"><i class="ico-book3"></i></span>&nbsp<span class="text">Kerusakan</span>', ['/kerusakan/index']) ?>
                    </li>
                     <li class=''>
                        <?= Html::a('<span class="figure"><i class="ico-book3"></i></span>&nbsp<span class="text">Rule</span>', ['/rule/index']) ?>
                    </li>
                    <?php if($level=='Admin'):?>
                    <li class=''>
                        <?= Html::a('<span class="figure"><i class="ico-book3"></i></span>&nbsp<span class="text">User</span>', ['/user/index']) ?>
                    </li>
                    <?php endif;?>

                    <li class=''>
                        <?= Html::a('<span class="figure"><i class="ico-signout"></i></span>&nbsp<span class="text">Logout</span>', ['/site/logout']) ?>
                    </li>
                    <?php elseif($level=='User'):?>
                    <li class=''>
                        <?= Html::a('<span class="figure"><i class="ico-globe"></i></span>&nbsp<span class="text">Comment</span>', ['#/comment/index']) ?>
                    </li>
                    <?php endif;?>
                    
                    <?php if($level=='super admin'):?>
                    <li class=''>
                        <?= Html::a('<span class="figure"><i class="ico-globe"></i></span>&nbsp<span class="text">User</span>', ['/user/index']) ?>
                    </li>
                    <?php endif;?>
                    
                    
                    
                </ul>
                <!--/ END Template Navigation/Menu -->

                <!-- START Sidebar summary -->
                <!-- Summary -->
                
                
                <!--/ Summary -->
                <!--/ END Sidebar summary -->
            </section>
            <!--/ END Sidebar Container -->
        </aside>
        <!--/ END Template Sidebar (Left) -->

        <!-- START Template Sidebar (right) -->
        
        <!--/ END Template Sidebar (right) -->
        <!-- START Template Main -->
        <section id="main" role="main">
            <!-- START Template Container -->
            <div class="container-fluid" style="min-height:224px;"><!-- add min-height to simulate scrolling -->
                <!-- Page Header -->
                <div class="row" style="margin:0px 10px 5px 10px">
                    <?= Breadcrumbs::widget([
                    'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                    ]) ?>
                    <?= Alert::widget() ?>
                    <!-- Page Header -->
                    <?= $content ?>
                
                </div>
            </div>
            <!--/ END Template Container -->

            <!-- START To Top Scroller -->
            <a href="#" class="totop animation" data-toggle="waypoints totop" data-showanim="bounceIn" data-hideanim="bounceOut" data-offset="50%"><i class="ico-angle-up"></i></a>
            <!--/ END To Top Scroller -->
        </section>
        <!--/ END Template Main -->
         <!-- START Template Footer -->
        <footer id="footer" style="position:relative">
            <!-- START container-fluid -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <!-- copyright -->
                        <p class="nm text-muted">&copy; Dikha Friasi - Universitas Riau <?= date('Y') ?> </p>
                        <!--/ copyright -->
                    </div>
                    <div class="col-sm-6 text-right hidden-xs">
                        <?= Yii::powered() ?>
                    </div>
                </div>
            </div>
            <!--/ END container-fluid -->
        </footer>
        <!--/ END Template Footer -->
       
 <?php
    yii\bootstrap\Modal::begin([
    'headerOptions' => ['id' => 'modalHeader'],
    'id' => 'modal',
    'size' => 'modal-lg',
    'clientOptions' => ['backdrop' => 'static', 'keyboard' => true]
    ]);
    echo "<div id='modalContent'></div>";
    yii\bootstrap\Modal::end();
?>  
<!--akhir-->
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
