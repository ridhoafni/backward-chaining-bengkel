<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Penerima */

$this->title = $model->id_penerima;
$this->params['breadcrumbs'][] = ['label' => 'Penerimas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="penerima-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_penerima], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_penerima], [
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
            'id_penerima',
            'nama_penerima',
            'nama_toko',
            'created_date',
        ],
    ]) ?>

</div>
