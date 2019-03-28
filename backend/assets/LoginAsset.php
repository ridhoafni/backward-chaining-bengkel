<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class LoginAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',

		'adminre/stylesheet/bootstrap.css',
        'adminre/stylesheet/layout.css',
        'adminre/stylesheet/uielement.css',
        // <!--/ Application stylesheet -->

        // <!-- Theme stylesheet : optional -->
        // <!--/ Theme stylesheet : optional -->

        // <!-- modernizr script -->
    ];
    public $js = [
	'adminre/plugins/modernizr/js/modernizr.js',
	'adminre/javascript/vendor.js',
	'adminre/javascript/core.js',
	'adminre/javascript/backend/app.js',
	// <!--/ Application and vendor script : mandatory -->

	// <!-- Plugins and page level script : optional -->
	'adminre/plugins/parsley/js/parsley.js',
	'adminre/javascript/backend/pages/login.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
