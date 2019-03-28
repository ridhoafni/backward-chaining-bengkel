<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "mak".
 *
 * @property integer $id_mak
 * @property integer $mak
 * @property string $nama_mak
 * @property string $saldo
 */
class Mak extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mak';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['mak', 'nama_mak', 'saldo'], 'required'],
            [['mak'], 'integer'],
            [['nama_mak', 'saldo'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_mak' => 'Id Mak',
            'mak' => 'Mak',
            'nama_mak' => 'Nama Mak',
            'saldo' => 'Saldo',
        ];
    }
}
