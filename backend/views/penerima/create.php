<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Penerima */

$this->title = 'Create Penerima';
$this->params['breadcrumbs'][] = ['label' => 'Penerimas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="penerima-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form2', [
        'model' => $model,
    ]) ?>

</div>
