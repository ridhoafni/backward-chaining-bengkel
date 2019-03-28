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
		//<!-- Application stylesheet : mandatory -->
		'adminre/plugins/flot/css/flot.css',
        'adminre/plugins/owl/css/owl-carousel.css',
        'adminre/plugins/datatables/css/datatables.css',
        'adminre/plugins/datatables/css/tabletools.css',
        'adminre/plugins/jqvmap/css/jqvmap.css',
        // <!--/ Plugins stylesheet : optional -->
		// <!-- Plugins stylesheet : optional -->
		'adminre/plugins/selectize/css/selectize.css',
		'adminre/plugins/jquery-ui/css/jquery-ui.css',
		'adminre/plugins/select2/css/select2.css',
		'adminre/plugins/touchspin/css/touchspin.css',
        // <!--/ Plugins stylesheet : optional -->
		// <!-- Plugins stylesheet : optional -->
		'adminre/netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css',
        'adminre/plugins/summernote/css/summernote.css',
        // <!--/ Plugins stylesheet : optional -->
        'adminre/stylesheet/bootstrap.css',
        'adminre/stylesheet/layout.css',
        'adminre/stylesheet/uielement.css',
		'adminre/plugins/modernizr/js/modernizr.js',

        // <!--/ Application stylesheet -->
		// <!-- Theme stylesheet : optional -->
        'adminre/stylesheet/themes/layouts/fixed-sidebar.css',

        
    ];
    public $js = [
	// 'modal/modal.js',
	'adminre/plugins/modernizr/js/modernizr.js',
	'adminre/javascript/vendor.js',
	'adminre/javascript/core.js',
	'adminre/javascript/backend/app.js',
	 // <!-- Plugins and page level script : optional -->
	'adminre/plugins/summernote/js/summernote.js',
	'adminre/javascript/backend/forms/wysiwyg.js',
	
	// <!-- Plugins and page level script : optional -->
	'adminre/plugins/selectize/js/selectize.js',
	'adminre/plugins/jquery-ui/js/jquery-ui.js',
	//date bermasalah
	'adminre/plugins/jquery-ui/js/addon/timepicker/jquery-ui-timepicker.js',
	'adminre/plugins/jquery-ui/js/jquery-ui-touch.js',
	'adminre/plugins/inputmask/js/inputmask.js',
	'adminre/plugins/select2/js/select2.js',
	'adminre/plugins/touchspin/js/jquery.bootstrap-touchspin.js',
	'adminre/javascript/backend/forms/element.js',
	// <!--/ Plugins and page level script : optional -->
	// <!-- Plugins and page level script : optional -->
	'adminre/plugins/flot/js/jquery.flot.js',
	'adminre/plugins/flot/js/jquery.flot.resize.js',
	'adminre/plugins/flot/js/jquery.flot.categories.js',
	'adminre/plugins/flot/js/jquery.flot.time.js',
	'adminre/plugins/flot/js/jquery.flot.tooltip.js',
	'adminre/plugins/flot/js/jquery.flot.spline.js',
	'adminre/plugins/owl/js/owl.carousel.js',
	// <!-- Plugins and page level script : optional -->
        'adminre/plugins/datatables/js/jquery.dataTables.js',
        'adminre/plugins/datatables/tabletools/js/dataTables.tableTools.js',
        'adminre/plugins/datatables/js/datatables-bs3.js',
        'adminre/javascript/backend/tables/datatable.js',
	// <!--/ Plugins and page level script : optional -->
	'adminre/plugins/jqvmap/js/jquery.vmap.js',
	// 'adminre/javascript/backend/pages/dashboard-v2.js',
	
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
