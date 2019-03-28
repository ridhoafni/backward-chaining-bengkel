<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "kwitansi".
 *
 * @property integer $id_kwitansi
 * @property string $tgl_kwitansi
 * @property integer $kegiatan
 * @property integer $mak
 * @property string $keterangan
 * @property string $ppn
 * @property string $total
 * @property integer $kepada
 * @property string $created_date
 * @property integer $created_by
 */
class Kwitansi extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
	public $file_excel;
    public static function tableName()
    {
        return 'kwitansi';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['mak','kegiatan' ,'keterangan'], 'required'],
            // [['tgl_kwitansi', 'created_date'], 'safe'],
            // [['created_date'], 'safe'],
			[['created_date'], 'safe'],
            [['kegiatan', 'mak', 'kepada', 'created_by'], 'integer'],
            [['keterangan', 'ppn','no_bukti','no_spd'], 'string'],
            [['total'], 'string', 'max' => 100],
			[['file_excel'], 'file', 'extensions' => 'xlsx'],
			[['file_excel'],'safe','on'=>'excel'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_kwitansi' => 'Id Kwitansi',
            'tgl_kwitansi' => 'Tgl Kwitansi',
            'no_bukti' => 'Nomor Bukti',
            'kegiatan' => 'Kegiatan',
            'mak' => 'Mak',
            'keterangan' => 'Keterangan',
            'ppn' => 'Ppn',
            'total' => 'Total',
            'kepada' => 'Kepada',
            'no_spd' => 'Nomor SPD',
            'tgl_spd' => 'Tanggal SPD',
            'created_date' => 'Created Date',
            'created_by' => 'Created By',
        ];
    }
}
