<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Gejala */

$this->title = $model->kode_gejala;
$this->params['breadcrumbs'][] = ['label' => 'Gejalas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="gejala-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->kode_gejala], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->kode_gejala], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'kode_gejala',
            'ket_gejala',
        ],
    ]) ?>

</div>
