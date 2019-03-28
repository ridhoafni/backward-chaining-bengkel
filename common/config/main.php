<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
			// 'controllerMap' => [
				// 'file' => 'mdm\upload\FileController', // use to show or download file
			// ],
        ],
		// 'mailer' => [
			// 'class' => 'yii\swiftmailer\Mailer',
			// 'viewPath' => '@common/mail',
			// 'useFileTransport' => false, //for the testing purpose, you need to enable this
			// 'transport' => [
                // 'class' => 'Swift_SmtpTransport',
                // 'host' => 'smtp.gmail.com',
                // 'username' => 'd.flashsoft@gmail.com',
                // 'password' => '1234567890fs',
                // 'port' => '465', 
                // 'port' => '587', 
                // 'encryption' => 'ssl', //depends if you need it
			// ],
		// ],
    ],
];
