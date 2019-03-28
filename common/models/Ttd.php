<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "ttd".
 *
 * @property integer $id_ttd
 * @property integer $id_jabatan
 */
class Ttd extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ttd';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_jabatan'], 'required'],
            [['id_jabatan'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_ttd' => 'Id Ttd',
            'id_jabatan' => 'Id Jabatan',
        ];
    }
}
