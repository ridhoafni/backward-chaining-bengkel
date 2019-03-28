<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "pegawai".
 *
 * @property integer $id_pegawai
 * @property string $nip
 * @property string $nama_pegawai
 */
class Pegawai extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pegawai';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nip', 'nama_pegawai'], 'required'],
            [['nip', 'nama_pegawai'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_pegawai' => 'Id Pegawai',
            'nip' => 'Nip',
            'nama_pegawai' => 'Nama Pegawai',
        ];
    }
}
