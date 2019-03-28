<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

use \yii\web\Request;
$baseUrl = str_replace('/backend/web', '', (new Request)->getBaseUrl());

return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [],
    'components' => [
		'request' => [
            'baseUrl' => $baseUrl,
        ],
		'urlManager' => [				
			'showScriptName' => false,	// Disable index.php
			'enablePrettyUrl' => true,	// Disable r= routes
			// 'enableStrictParsing' => true,
			'rules' => array(
				// 'mycategory/<controller:\w+>/<action:\w+>' => '<controller>/<action>',
				// '<controller:\w+>/<id:\d+>' => '<controller>/view',
				// '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
				// '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
				// //Rules with Server Names
				// 'http://admin.domain.com/login' => 'admin/user/login',
				// 'http://www.domain.com/login' => 'site/login',
				// 'http://<country:\w+>.domain.com/profile' => 'user/view',
				// '<controller:\w+>/<id:\d+>-<slug:[A-Za-z0-9 -_.]+>' => '<controller>/view',
			),
		],

        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
    ],
    'params' => $params,
];
