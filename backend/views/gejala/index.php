<?php
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Gejala';
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
                <h3 class="panel-title"><strong>Tabel Data Gejala</strong></h3>
            </div>
            <table class="table table-striped table-bordered" id="zero-configuration">
                <thead>
                    <tr>
                        <th>Nomor</th>
                        <th>Kode Gejala</th>
                        <th>Keterangan Gejala</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>     
                        
                        <?php 
                        $no=1;foreach($data as $db):
                            
                        ?>
                        
                        <tr>
                            <td align="center"><?= $no;?></td>
                            <td ><?= $db['kode_gejala'];?></td>
                            <td ><?= $db['ket_gejala'];?></td>
                            <td>
                            <?= Html::a('<i class="ico-pencil5"></i>', ['/gejala/update','id'=>$db['kode_gejala']], ['class' => 'btn btn-info']) ?>
                            <?= Html::a('<i class="ico-trash"></i>', ['/gejala/delete', 'id' => $db['kode_gejala']], [
                                    'class' => 'btn btn-danger',
                                    'data' => [
                                        'confirm' => 'Anda yakin mau menghapus data "'.$db['kode_gejala'].'"?',
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