<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Kerusakan */

$this->title = 'Update Kerusakan: ' . $model->kode_kerusakan;
$this->params['breadcrumbs'][] = ['label' => 'Kerusakan', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->kode_kerusakan, 'url' => ['view', 'id' => $model->kode_kerusakan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kerusakan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
