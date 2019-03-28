<?php
namespace backend\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use common\models\LoginForm;
use common\models\User;
use yii\filters\VerbFilter;
use common\models\Mak;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error','createsu'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index','profile'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    // 'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex()
    {
		$model= ( (new \yii\db\Query())
		->select(['*']) 
		->from('kwitansi')
		->where('tgl_kwitansi !=""')
		->groupby(['kwitansi.mak'])
		);
		$command = $model->createCommand();
		$model = $command->queryAll();
		
        
        return $this->render('index', [
			'model'=>$model,
        ]);
    }
	public
     function actionProfile()
    {
        $id=Yii::$app->user->identity->id;
        $model = User::findOne($id);

        if(isset(Yii::$app->request->post()['email'] ) )
        {
            $model->email=Yii::$app->request->post()['email'];
            $model->save();
            return $this->redirect(['profile']);
        }
        if(isset(Yii::$app->request->post()['unit'] ) )
        {
            $model->unit=Yii::$app->request->post()['unit'];
            $model->save();
            return $this->redirect(['profile']);
        }
        if(isset(Yii::$app->request->post()['password_lama'] ) )
        {
            if(Yii::$app->request->post()['password_baru']==Yii::$app->request->post()['konfirmasi_password_baru'])
            {
                
                $model->setPassword(Yii::$app->request->post()['password_baru']);
                $model->generateAuthKey();
                $model->save();
            }
            return $this->redirect(['profile']);
        }

        return $this->render('profile',[
            'model'=>$model,
        ]);
    }

    public function actionLogin()
    {
		$this->layout = 'mainlogin';
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }public function actionCreatesu()
    {
        $model = new User();

        $model->username='youkai';
        $model->email='youkai@gmail.com';
        $model->level_user='super admin';
        $model->setPassword('youkai');
        $model->generateAuthKey();
        // $model->unit='';
        if ( $model->save()) {
            return $this->redirect(['index']);
        }
       
    }
}
