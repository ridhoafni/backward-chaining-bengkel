<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "jabatan".
 *
 * @property integer $id_jabatan
 * @property string $nama_jabatan
 * @property integer $id_pegawai
 */
class Jabatan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'jabatan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama_jabatan', 'id_pegawai'], 'required'],
            [['id_pegawai'], 'integer'],
            [['nama_jabatan'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_jabatan' => 'Id Jabatan',
            'nama_jabatan' => 'Nama Jabatan',
            'id_pegawai' => 'Id Pegawai',
        ];
    }
}
