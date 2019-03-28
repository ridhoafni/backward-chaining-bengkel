<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "gejala".
 *
 * @property string $kode_gejala
 * @property string $ket_gejala
 */
class Gejala extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'gejala';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kode_gejala', 'ket_gejala'], 'required'],
            [['kode_gejala'], 'string', 'max' => 3],
            [['ket_gejala'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kode_gejala' => 'Kode Gejala',
            'ket_gejala' => 'Ket Gejala',
        ];
    }
}
