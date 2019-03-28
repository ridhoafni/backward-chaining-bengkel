<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "satuan".
 *
 * @property integer $id_satuan
 * @property string $nama_satuan
 */
class Satuan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'satuan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama_satuan'], 'required'],
            [['nama_satuan'], 'string', 'max' => 25],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_satuan' => 'Id Satuan',
            'nama_satuan' => 'Nama Satuan',
        ];
    }
}
