<?php
use yii\helpers\Html;
use yii\grid\GridView;

$this->title = 'Data Rule';
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
                <h3 class="panel-title"><strong>Tabel Data Rule</strong></h3>
            </div>
            <table class="table table-striped table-bordered" id="zero-configuration">
                <thead>
                    <tr>
                        <th>Nomor</th>
                        <th>Kode Rule</th>
                        <th>Kaidah Aturan</th>
                        <th>Kode Kerusakan</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>     
                        
                        <?php 
                        $no=1;foreach($data as $db):
                            
                        ?>
                        
                        <tr>
                            <td align="center"><?= $no;?></td>
                            <td ><?= $db['kode_rule'];?></td>
                            <td ><?= $db['kaidah_aturan'];?></td>
                            <td ><?= $db['kode_kerusakan'];?></td>
                            <td>
                            <?= Html::a('<i class="ico-pencil5"></i>', ['/rule/update','id'=>$db['kode_rule']], ['class' => 'btn btn-info']) ?>
                            <?= Html::a('<i class="ico-trash"></i>', ['/rule/delete', 'id' => $db['kode_rule']], [
                                    'class' => 'btn btn-danger',
                                    'data' => [
                                        'confirm' => 'Anda yakin mau menghapus data "'.$db['kode_rule'].'"?',
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