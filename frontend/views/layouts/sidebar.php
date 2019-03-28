<?php 
use yii\bootstrap\Nav;
$categories = \common\models\Category::find()
		 ->orderBy('name ASC')
		 ->all();

$posts = \common\models\Post::find()
		 ->where(['status' => 1])
		 ->orderBy('id DESC')
		 ->limit(5)
		 ->all();
?>


	<h2>Berita Terbaru</h2>
	<?php
		foreach($posts as $post)
		{
			echo '<div class="row">';
				echo '<div class="col-md-12">';
					echo '<div class="col-md-4">';
					// echo '<img src="'.Yii::$app->homeUrl.'images/emenu/3.jpg" alt="eMenu" style="width:100%;">';
						echo '<a href="'.Yii::$app->homeUrl.'site/post-single?id='.$post->id.'"><img src="images/post/'.$post->file.'" alt="eMenu" style="width:100%;"></a>';
					echo '</div>';
					echo '<div class="col-md-8">';
						echo '<p style="font-size:12px"><b><a href="'.Yii::$app->homeUrl.'site/post-single?id='.$post->id.'">'.substr($post->title,0,35).'...</a></b></p>';
						echo '<p><small>Posted by '.$post->user->username.' at '.date('F j, Y, g:i a',$post->create_time).'</small></p>';
					echo '</div>';
				echo '</div>';
			echo '</div>';
		}
		// echo LinkPager::widget([
			// 'pagination' => $pages,
		// ]);
	?>
	<h2>Instagram</h2>
	<?php
		media('flash_soft');
		function media($user_id)
		{				
			
			$url="https://www.instagram.com/".$user_id."/media/";
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_HEADER, 0);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_URL, $url);
		
			$data = curl_exec($ch);
			curl_close($ch);
			
			$s = $data;
			
			$data = json_decode($s, true);

			echo '
				<div class="row" style="margin:1%;" valign="center">
					<a href="https://www.instagram.com/'.$data['items'][0]['user']['username'].'" target="_blank">
						<img src="'.$data['items'][0]['user']['profile_picture'].'" width="10%" style="float:left;margin:2px;">
						<h3 style="float:left;margin:2px;" >
							<small> '.$data['items'][0]['user']['username'].'</small>
						</h3>
					</a>
				</div>
			';
			
			for($i=0;$i<count($data['items']);$i++)
			{
				echo '<a href="#detail.php?url='.$data['items'][$i]['link'].'" target="_blank"><img src="'.$data['items'][$i]['images']['thumbnail']['url'].'" width="31%" style="padding:0.5%;margin:1%;"  class="btn-danger"></a>';
			}
			
		
		}
	?>
	
	<!--foto & video-->
