<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Penerima */

$this->title = 'Update Penerima: ' . $model->id_penerima;
$this->params['breadcrumbs'][] = ['label' => 'Penerimas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_penerima, 'url' => ['view', 'id' => $model->id_penerima]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="penerima-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
