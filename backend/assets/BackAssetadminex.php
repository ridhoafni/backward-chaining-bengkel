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
class BackAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
		//<!--icheck-->
		'adminex/js/iCheck/skins/minimal/minimal.css',
		'adminex/js/iCheck/skins/square/square.css',
		'adminex/js/iCheck/skins/square/red.css',
		'adminex/js/iCheck/skins/square/blue.css',

		//<!--dashboard calendar-->
		'adminex/css/clndr.css',

		//<!--Morris Chart CSS -->
		'adminex/js/morris-chart/morris.css',

		'adminex/js/advanced-datatable/css/demo_page.css',
		'adminex/js/advanced-datatable/css/demo_table.css',
		'adminex/js/data-tables/DT_bootstrap.css',

		'adminex/css/style.css',
		'adminex/css/style-responsive.css',
    ];
    public $js = [
		//<!-- Placed js at the end of the document so the pages load faster -->
		'adminex/js/jquery-1.10.2.min.js',
		'adminex/js/jquery-ui-1.9.2.custom.min.js',
		'adminex/js/jquery-migrate-1.2.1.min.js',
		'adminex/js/bootstrap.min.js',
		'adminex/js/modernizr.min.js',
		'adminex/js/jquery.nicescroll.js',
		//<!--easy pie chart-->
		'adminex/js/easypiechart/jquery.easypiechart.js',
		// 'adminex/js/easypiechart/easypiechart-init.js',

		//<!--Sparkline Chart-->
		'adminex/js/sparkline/jquery.sparkline.js',
		'adminex/js/sparkline/sparkline-init.js',

		//<!--icheck -->
		'adminex/js/iCheck/jquery.icheck.js',
		'adminex/js/icheck-init.js',

		//<!-- jQuery Flot Chart-->
		'adminex/js/flot-chart/jquery.flot.js',
		'adminex/js/flot-chart/jquery.flot.tooltip.js',
		'adminex/js/flot-chart/jquery.flot.resize.js',


		//<!--Morris Chart-->
		'adminex/js/morris-chart/morris.js',
		'adminex/js/morris-chart/raphael-min.js',

		//<!--Calendar-->
		'adminex/js/calendar/clndr.js',
		'adminex/js/calendar/evnt.calendar.init.js',
		'adminex/js/calendar/moment-2.2.1.js',
		'http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js',

		//<!--dynamic table-->
		'adminex/js/advanced-datatable/js/jquery.dataTables.js',
		'adminexjs/data-tables/DT_bootstrap.js',
		//<!--dynamic table initialization -->
		'adminex/js/dynamic_table_init.js',

		//<!--common scripts for all pages-->
		'adminex/js/scripts.js',

    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
