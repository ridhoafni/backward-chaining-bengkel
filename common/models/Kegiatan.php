<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "kegiatan".
 *
 * @property integer $id_kegiatan
 * @property string $kode_kegiatan
 */
class Kegiatan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kegiatan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kode_kegiatan'], 'required'],
            [['kode_kegiatan'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_kegiatan' => 'Id Kegiatan',
            'kode_kegiatan' => 'Kode Kegiatan',
        ];
    }
}
