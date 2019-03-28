<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "kwitansi_detail".
 *
 * @property integer $id_kd
 * @property integer $id_kwitansi
 * @property string $kegiatan
 * @property integer $volume
 * @property integer $satuan
 * @property string $harga
 * @property string $created_date
 * @property integer $created_by
 */
class KwitansiDetail extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kwitansi_detail';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_kwitansi', 'kegiatan', 'volume', 'satuan', 'harga', 'created_date', 'created_by'], 'required'],
            [['id_kwitansi', 'volume', 'satuan', 'created_by'], 'integer'],
            [['created_date'], 'safe'],
            [['kegiatan'], 'string', 'max' => 250],
            [['harga'], 'string', 'max' => 25],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_kd' => 'Id Kd',
            'id_kwitansi' => 'Id Kwitansi',
            'kegiatan' => 'Kegiatan',
            'volume' => 'Volume',
            'satuan' => 'Satuan',
            'harga' => 'Harga',
            'created_date' => 'Created Date',
            'created_by' => 'Created By',
        ];
    }
}
