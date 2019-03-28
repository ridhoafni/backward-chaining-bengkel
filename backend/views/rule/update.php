<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Rule */

$this->title = 'Update Rule: ' . $model->kode_rule;
$this->params['breadcrumbs'][] = ['label' => 'Rules', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->kode_rule, 'url' => ['view', 'id' => $model->kode_rule]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="rule-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
