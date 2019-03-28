<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm; 

/* @var $this yii\web\View */

$this->title = 'Profil Saya';
?>
<section id="main" role="main">
            <!-- START Template Container -->
            <div class="container-fluid">
                <!-- Page Header -->
                <div class="page-header page-header-block">
                    <div class="page-header-section">
                        <h4 class="title semibold">Profil Saya / Pengaturan Akun</h4>
                    </div>
                    <div class="page-header-section">
                        <!-- Toolbar -->
                        <div class="toolbar">
                            <ol class="breadcrumb breadcrumb-transparent nm">
                                <li><?= Html::a('Dashboard ', ['/site/index']) ?></li>
                                <li class="active">Profil</li>
                            </ol>
                        </div>
                        <!--/ Toolbar -->
                    </div>
                </div>
                <!-- Page Header -->

                <!-- START row -->
                <div class="row">
                    <!-- Left / Top Side -->
                    <div class="col-lg-3">
                        <!-- tab menu -->
                        <ul class="list-group list-group-tabs">
                            <li class="list-group-item active"><a href="#profile" data-toggle="tab"><i class="ico-user2 mr5"></i> Profil</a></li>
                            <li class="list-group-item"><a href="#unit" data-toggle="tab"><i class="ico-archive2 mr5"></i> Unit</a></li>
                            <li class="list-group-item"><a href="#password" data-toggle="tab"><i class="ico-key2 mr5"></i> Ganti Password</a></li>
                        </ul>
                        <!-- tab menu -->

                        <hr><!-- horizontal line -->

                        <!-- figure with progress -->
                        <ul class="list-table">
                            <li style="width:70px;">
                                <img class="img-circle img-bordered" src="../image/avatar/avatar7.jpg" alt="" width="65px">
                            </li>
                            <li class="text-left">
                                <h5 class="semibold ellipsis mt0"><?= $model['username']; ?></h5>
                                <div style="max-width:200px;">
                                    <div class="progress progress-xs mb5">
                                        <div class="progress-bar progress-bar-warning" style="width:100%"></div>
                                    </div>
                                    <p class="text-muted clearfix nm">
                                        <span class="pull-left">Profile complete</span>
                                        <span class="pull-right">100%</span>
                                    </p>
                                </div>
                            </li>
                        </ul>
                        <!--/ figure with progress -->

                        <hr><!-- horizontal line -->

                        <!-- follower stats -->
                        <!--/ follower stats -->
                    </div>
                    <!--/ Left / Top Side -->

                    <!-- Left / Bottom Side -->
                    <div class="col-lg-9">
                        <!-- START Tab-content -->
                        <div class="tab-content">
                            <!-- tab-pane: profile -->
                            <div class="tab-pane active" id="profile">
                                <!-- form profile -->
                                
                                <?php $form = ActiveForm::begin(); ?>
                                <div class="panel form-horizontal form-bordered">
                                    <div class="panel-body pt0 pb0">
                                        <div class="form-group header bgcolor-default">
                                            <div class="col-md-12">
                                                <h4 class="semibold text-primary mt0 mb5">Profil</h4>
                                                <p class="text-default nm">This information appears on your public profile, search results, and beyond.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Username</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" name="username" placeholder="Masukkan data anda" value="<?= $model['username']; ?>">
                                                <p class="help-block">Masukkan username anda.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Email</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" name="email" placeholder="Masukkan data anda" value="<?= $model['email']; ?>">
                                                <p class="help-block">Masukkan email anda.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Photo</label>
                                            <div class="col-sm-9">
                                                <div class="btn-group pr5">
                                                    <img class="img-circle img-bordered" src="../image/avatar/avatar7.jpg" alt="" width="34px">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <button type="reset" class="btn btn-default">Reset</button>
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                    </div>
                                </div>
                                <?php ActiveForm::end(); ?>
                                <!--/ form profile -->
                            </div>
                            <!--/ tab-pane: profile -->

                            <!-- tab-pane: account -->
                            <div class="tab-pane" id="unit">
                                <!-- form account -->
                                <?php $form = ActiveForm::begin(); ?>
                                <div class="panel form-horizontal form-bordered">
                                    <div class="panel-body pt0 pb0">
                                        <div class="form-group header bgcolor-default">
                                            <div class="col-md-12">
                                                <h4 class="semibold text-primary mt0 mb5">Unit</h4>
                                                <p class="text-default nm">Halaman pengaturan akun</p>
                                            </div>
                                        </div>
                                        <div class="panel-body pt0 pb0">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Unit</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" name="unit" placeholder="Masukkan data anda" value="<? //$model->unit; ?>">
                                                    <p class="help-block">Masukkan unit anda.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <button type="reset" class="btn btn-default">Reset</button>
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </div>
                                    </div>
                                </div>
                                <?php ActiveForm::end(); ?>
                                <!--/ form account -->
                            </div>
                            <!--/ tab-pane: account -->

                            <!-- tab-pane: security -->
                            <div class="tab-pane" id="security">
                                <!-- form security -->
                                
                                
                            </div>
                            <!--/ tab-pane: security -->

                            <!-- tab-pane: password -->
                            <div class="tab-pane" id="password">
                                <!-- form password -->
                                <?php $form = ActiveForm::begin(); ?>
                                <div class="panel form-horizontal form-bordered">
                                    <div class="panel-body pt0 pb0">
                                        <div class="form-group header bgcolor-default">
                                            <div class="col-md-12">
                                                <h4 class="semibold text-primary mt0 mb5">Ganti Password</h4>
                                                <p class="text-default nm">Halaman untuk mengganti password</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Password Lama</label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" name="password_lama" placeholder="Masukkan data anda" value="">
                                                <p class="help-block">Masukkan password lama anda.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Password Baru</label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" name="password_baru" placeholder="Masukkan data anda" value="">
                                                <p class="help-block">Masukkan password baru anda.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Konfirmasi Password Baru</label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" name="konfirmasi_password_baru" placeholder="Masukkan data anda" value="">
                                                <p class="help-block">Masukkan password baru anda.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <button type="reset" class="btn btn-default">Reset</button>
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                    </div>
                                </div>
                                <?php ActiveForm::end(); ?>
                            </div>
                            <!--/ tab-pane: password -->
                        </div>
                        <!--/ END Tab-content -->
                    </div>
                    <!--/ Left / Bottom Side -->
                </div>
                <!--/ END row -->
            </div>
            <!--/ END Template Container -->

            <!-- START To Top Scroller -->
            <a href="#" class="totop animation" data-toggle="waypoints totop" data-showanim="bounceIn" data-hideanim="bounceOut" data-offset="50%"><i class="ico-angle-up"></i></a>
            <!--/ END To Top Scroller -->
        </section>
