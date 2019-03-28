<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Gejala */

$this->title = 'Update Gejala: ' . $model->kode_gejala;
$this->params['breadcrumbs'][] = ['label' => 'Gejala', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->kode_gejala, 'url' => ['view', 'id' => $model->kode_gejala]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="gejala-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
