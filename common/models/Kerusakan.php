<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "kerusakan".
 *
 * @property string $kode_kerusakan
 * @property string $ket_kerusakan
 * @property string $solusi
 */
class Kerusakan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kerusakan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kode_kerusakan', 'ket_kerusakan', 'solusi'], 'required'],
            [['kode_kerusakan'], 'string', 'max' => 3],
            [['ket_kerusakan'], 'string', 'max' => 100],
            [['solusi'], 'string', 'max' => 500],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kode_kerusakan' => 'Kode Kerusakan',
            'ket_kerusakan' => 'Ket Kerusakan',
            'solusi' => 'Solusi',
        ];
    }
}
