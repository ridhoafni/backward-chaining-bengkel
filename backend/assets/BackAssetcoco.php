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
		// <!-- Base Css Files -->
        'coco/assets/libs/jqueryui/ui-lightness/jquery-ui-1.10.4.custom.min.css',
        'coco/assets/libs/bootstrap/css/bootstrap.min.css',
        'coco/assets/libs/font-awesome/css/font-awesome.min.css',
        'coco/assets/libs/fontello/css/fontello.css',
        'coco/assets/libs/animate-css/animate.min.css',
        'coco/assets/libs/nifty-modal/css/component.css',
        'coco/assets/libs/magnific-popup/magnific-popup.css', 
        'coco/assets/libs/ios7-switch/ios7-switch.css', 
        'coco/assets/libs/pace/pace.css',
        'coco/assets/libs/sortable/sortable-theme-bootstrap.css',
        'coco/assets/libs/bootstrap-datepicker/css/datepicker.css',
        'coco/assets/libs/jquery-icheck/skins/all.css',
               // <!-- Extra CSS Libraries Start -->
                'coco/assets/libs/jquery-datatables/css/dataTables.bootstrap.css',
                'coco/assets/libs/jquery-datatables/extensions/TableTools/css/dataTables.tableTools.css',
       // <!-- Code Highlighter for Demo -->
        'coco/assets/libs/prettify/github.css',
		'coco/assets/libs/summernote/summernote.css',
		'coco/assets/css/style.css',
        'coco/assets/css/style-responsive.css',
				// <!-- Extra CSS Libraries Start -->
                'coco/assets/libs/rickshaw/rickshaw.min.css',
                'coco/assets/libs/morrischart/morris.css',
                'coco/assets/libs/jquery-jvectormap/css/jquery-jvectormap-1.2.2.css',
                'coco/assets/libs/jquery-clock/clock.css',
                'coco/assets/libs/bootstrap-calendar/css/bic_calendar.css',
                'coco/assets/libs/sortable/sortable-theme-bootstrap.css',
                'coco/assets/libs/jquery-weather/simpleweather.css',
                'coco/assets/libs/bootstrap-xeditable/css/bootstrap-editable.css',

               // <!-- Extra CSS Libraries End -->
    ];
    public $js = [
	// <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	'coco/assets/libs/jquery/jquery-1.11.1.min.js',
	'coco/assets/libs/bootstrap/js/bootstrap.min.js',
	'coco/assets/libs/jqueryui/jquery-ui-1.10.4.custom.min.js',
	'coco/assets/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js',
	'coco/assets/libs/jquery-detectmobile/detect.js',
	'coco/assets/libs/jquery-animate-numbers/jquery.animateNumbers.js',
	'coco/assets/libs/ios7-switch/ios7.switch.js',
	'coco/assets/libs/fastclick/fastclick.js',
	'coco/assets/libs/jquery-blockui/jquery.blockUI.js',
	'coco/assets/libs/bootstrap-bootbox/bootbox.min.js',
	'coco/assets/libs/jquery-slimscroll/jquery.slimscroll.js',
	'coco/assets/libs/jquery-sparkline/jquery-sparkline.js',
	'coco/assets/libs/nifty-modal/js/classie.js',
	'coco/assets/libs/nifty-modal/js/modalEffects.js',
	'coco/assets/libs/sortable/sortable.min.js',
	'coco/assets/libs/bootstrap-fileinput/bootstrap.file-input.js',
	'coco/assets/libs/bootstrap-select/bootstrap-select.min.js',
	'coco/assets/libs/bootstrap-select2/select2.min.js',
	'coco/assets/libs/magnific-popup/jquery.magnific-popup.min.js', 
	'coco/assets/libs/pace/pace.min.js',
	'coco/assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.js',
	'coco/assets/libs/jquery-icheck/icheck.min.js',

	//<!-- Demo Specific JS Libraries -->
	'coco/assets/libs/prettify/prettify.js',
	'coco/assets/libs/summernote/summernote.js',
	'coco/assets/libs/jquery-datatables/js/jquery.dataTables.min.js',
	'coco/assets/libs/jquery-datatables/js/dataTables.bootstrap.js',
	'coco/assets/libs/jquery-datatables/extensions/TableTools/js/dataTables.tableTools.min.js',
	'coco/assets/js/pages/datatables.js',

	'coco/assets/js/init.js',
	'coco/assets/libs/d3/d3.v3.js',
	'coco/assets/libs/rickshaw/rickshaw.min.js',
	'coco/assets/libs/raphael/raphael-min.js',
	'coco/assets/libs/morrischart/morris.min.js',
	'coco/assets/libs/jquery-knob/jquery.knob.js',
	'coco/assets/libs/jquery-jvectormap/js/jquery-jvectormap-1.2.2.min.js',
	'coco/assets/libs/jquery-jvectormap/js/jquery-jvectormap-us-aea-en.js',
	'coco/assets/libs/jquery-clock/clock.js',
	'coco/assets/libs/jquery-easypiechart/jquery.easypiechart.min.js',
	'coco/assets/libs/jquery-weather/jquery.simpleWeather-2.6.min.js',
	'coco/assets/libs/bootstrap-xeditable/js/bootstrap-editable.min.js',
	// 'coco/assets/libs/bootstrap-calendar/js/bic_calendar.min.js',
	// 'coco/assets/js/apps/calculator.js',
	// 'coco/assets/js/apps/todo.js',
	'coco/assets/js/apps/notes.js',
	// 'coco/assets/js/pages/index.js',
	//<!-- Page Specific JS Libraries -->
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
