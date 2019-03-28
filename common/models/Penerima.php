<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "penerima".
 *
 * @property integer $id_penerima
 * @property string $nama_penerima
 * @property string $nama_toko
 * @property string $created_date
 */
class Penerima extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'penerima';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama_penerima', 'nama_toko'], 'required'],
            [['created_date'], 'safe'],
            [['nama_penerima', 'nama_toko'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_penerima' => 'Id Penerima',
            'nama_penerima' => 'Nama Penerima',
            'nama_toko' => 'Nama Toko',
            'created_date' => 'Created Date',
        ];
    }
}
