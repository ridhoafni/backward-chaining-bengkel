<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Kerusakan */

$this->title = 'Create Kerusakan';
$this->params['breadcrumbs'][] = ['label' => 'Kerusakan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kerusakan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
