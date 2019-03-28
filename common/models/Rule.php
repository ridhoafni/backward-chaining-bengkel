<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "rule".
 *
 * @property string $kode_rule
 * @property string $kaidah_aturan
 * @property string $kode_kerusakan
 */
class Rule extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'rule';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kode_rule', 'kaidah_aturan', 'kode_kerusakan'], 'required'],
            [['kode_rule'], 'string', 'max' => 5],
            [['kaidah_aturan'], 'string', 'max' => 100],
            [['kode_kerusakan'], 'string', 'max' => 3],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kode_rule' => 'Kode Rule',
            'kaidah_aturan' => 'Kaidah Aturan',
            'kode_kerusakan' => 'Kode Kerusakan',
        ];
    }
}
