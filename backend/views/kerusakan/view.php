
<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\DataIndo */

$this->title = "Detail Kerusakan";
?>
<div class="data-indo-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <table class="table table-striped table-bordered" id="zero-configuration">
                    
            <tbody> 
                 <tr>
                    <th>Kode Kerusakan</th>
                    <td><?php echo $model->kode_kerusakan ?></td>
                </tr>
                <tr>
                    <th>Keterangan Kerusakan</th>
                    <td><?php echo $model->ket_kerusakan ?></td>
                    </td>
                </tr>           
                <tr>
                    <th>Solusi</th>
                    <td>
                    <?php echo nl2br(htmlspecialchars($model->solusi)); ?>
                    </td>
                </tr>
                
            </tbody>
    </table>

</div>
        