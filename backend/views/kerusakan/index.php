<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Kerusakan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row" >

    
    <div class="col-md-14" style="background-color:#FFF">
        
        

        <div style="margin-bottom:20px">
            <div style="margin:10px 0px 0px 0px">
                <p><?= Html::a('Tambah Data', ['create'],['class' => 'btn btn-success']) ?></p>
            </div>
        </div>
        
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><strong>Tabel Data kerusakan</strong></h3>
            </div>
            <table class="table table-striped table-bordered" id="zero-configuration">
                <thead>
                    <tr>
                        <th>Nomor</th>
                        <th>Kode Kerusakan</th>
                        <th>Keterangan Kerusakan</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>     
                        
                        <?php 
                        $no=1;foreach($data as $db):
                            
                        ?>
                        
                        <tr>
                            <td align="center"><?= $no;?></td>
                            <td ><?= $db['kode_kerusakan'];?></td>
                            <td ><?= $db['ket_kerusakan'];?></td>   
                            <td>
                            <?= Html::a('<i class="ico-eye"></i>', ['/kerusakan/detail','id'=>$db['kode_kerusakan']], ['class' => 'btn btn-info']) ?>
                            <?= Html::a('<i class="ico-pencil5"></i>', ['/kerusakan/update','id'=>$db['kode_kerusakan']], ['class' => 'btn btn-info']) ?>
                            <?= Html::a('<i class="ico-trash"></i>', ['/kerusakan/delete', 'id' => $db['kode_kerusakan']], [
                                    'class' => 'btn btn-danger',
                                    'data' => [
                                        'confirm' => 'Anda yakin mau menghapus data "'.$db['kode_kerusakan'].'"?',
                                        'method' => 'post',
                                    ]
                                ]);
                            ?>
                            

                            </td>
                        </tr>
                        <?php $no++;endforeach; ?>
                        
                            
                        
                </tbody>
            </table>

        </div>
    </div>
</div>