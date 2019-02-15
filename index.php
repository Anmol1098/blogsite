<?php
require_once 'includes/init.php';
require_once 'includes/db_connection.php';
$title ='Welcome';
require_once 'templates/header.php';
$active ='home';
require_once 'templates/nav.php';

?>


			
			<main class="row">
				<div class="col-12 py-3">
					<?php
					$now = date('Y-m-d H:i:s');
					$sql ="SELECT * FROM articles WHERE status ='published' AND published_at <='{$now}' AND EXISTS(SELECT id FROM categories WHERE articles.category_id = categories.id AND categories.status = 'active') AND EXISTS(SELECT id FROM users WHERE articles.user_id = users.id AND users.status = 'active') ORDER BY published_at DESC lIMIT 1";
					$result = db_query($con, $sql);
					if($result && db_num_rows($result) > 0):
					?>
					<?php $article = db_fetch_assoc($result);?>
					<div class="row top-article">
						<div class="col-12 mb-3 text-center top-title">
							<?php echo $article['name'];?>
						</div>
						<?php if(!empty($article['featured_image'])):?>
						<div class="col-md-5 mb-3">
							<img src="<?php echo url('images/'.$article['featured_image']);?>" class="img-fluid">
						</div>
					<?php endif; ?>
						<div class="col">
							<div class="row">
								<div class="col-12">
									<?php
										$qry = "SELECT first_name,middle_name,last_name FROM users WHERE id='{$article['user_id']}'";
										
										$res = db_query($con, $qry);

										$author = db_fetch_assoc($res);
									?>
									<span class="top-info">
									<i class="fas fa-user mr-2"></i><?php echo $author['first_name'].' '.$author['middle_name'].' '.$author['last_name'];?>
								</span>
								<span class="top-info">
									<i class="fas fa-clock mr-2"></i><?php echo date('j M Y h:i A', strtotime($article['published_at'])); ?>
								</span>
								<?php
										$qry = "SELECT name FROM categories WHERE id='{$article['category_id']}'";
										
										$res = db_query($con, $qry);

										$category = db_fetch_assoc($res);
									?>
								<span class="top-info">
									<i class="fas fa-tags mr-2"></i><?php echo $category['name'];?>
								</span>
								</div>
								<div class="col-12 mr-2">
									<?php echo strip_tags(substr($article['content'],0,strpos($article['content'], '</p>')));?><a href="<?php echo url('article/'.$article['slug']);?>">Read more</a>
								</div>

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<hr/>
						</div>
					</div>
				<?php endif; ?>
					
					<div class="row">
						<?php
					
						$sql ="SELECT name,slug,featured_image FROM articles WHERE status ='published' AND published_at <='{$now}' AND EXISTS (SELECT id FROM categories WHERE articles.category_id = categories.id AND categories.status = 'active') AND EXISTS (SELECT id FROM users WHERE articles.user_id = users.id AND users.status = 'active') ORDER BY published_at DESC LIMIT 1, 8";

						
					
					$result = db_query($con, $sql);

					if($result && db_num_rows($result) > 0):
					?>
					<?php while($article = db_fetch_assoc($result)): ?>
						<div class="col-md-3 col-sm-6">
							<div class="row list-article">
								<div class="col-12">
									<?php if(!empty($article['featured_image'])):?>
									<div class="list-thumbnail" style="background-image:url(<?php echo url('images/'.$article['featured_image']); ?>)">
									</div>
									<?php else:?>
										<div class="list-thumbnail" style="background-image:url(<?php echo url('images/download.png'); ?>)">
									</div>

								<?php endif; ?>
									
								</div>
								<div class="col-12">
									<a href="<?php echo url('article/'.$article['slug']);?>" class="list-title"><?php echo $article['name'];?></a>
								</div>
							
						</div>
					</div>
					<?php endwhile; ?>

						<?php endif;?>
					</div>
				</div>
			</main>
			<?php require_once'templates/footer.php';?>