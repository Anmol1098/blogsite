<?php
require_once 'includes/init.php';
require_once 'includes/db_connection.php';
$now = date('Y-m-d H:i:s');
$sql ="SELECT * FROM articles WHERE status ='published' AND published_at <='{$now}' AND slug= '{$_GET['slug']}' AND EXISTS(SELECT id FROM categories WHERE articles.category_id = categories.id AND categories.status = 'active') AND EXISTS(SELECT id FROM users WHERE articles.user_id = users.id AND users.status = 'active')";

$result = db_query($con, $sql);

if(!$result || db_num_rows($result) <= 0){
	die('Page not found');
}
$article =db_fetch_assoc($result);



$title = $article['name'];
require_once 'templates/header.php';
$active ='';
require_once 'templates/nav.php';

?>


			
			<main class="row">
				<div class="col-12 py-3">
					
					<div class="row top-article">
						<div class="col-12 mb-3 text-center top-title">
							<?php echo $article['name'];?>
						</div>
						<?php if(!empty($article['featured_image'])):?>
						<div class="col-12 mb-3">
							<img src="<?php echo url('images/'.$article['featured_image']);?>" class="img-fluid">
						</div>
					<?php endif; ?>
						<div class="col-12">
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
									<?php echo $article['content'];
									 ?>
								</div>

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<hr/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7">
							<div class="row">
								<div class="col-12">
									<h3>Add Comments</h3>
								</div>
								<div class="col-12">
									<form method="POST" action="<?php echo url('add-comments.php');?>">
										<input type="hidden" name="article_id" value="<?php echo $article['id'];?>">
										<div class="form-group">
											<label for="name">
												Name
											</label>
											<input type="text" name="name" id="name" class="form-control"required>
										</div>
										<div class="form-group">
											<label for="email">
												E-mail
											</label>
											<input type="email" name="email" id="email" class="form-control"required>
										</div>
										<div class="form-group">
											<label for="content">
												content
											</label>
											<textarea class="form-control" name="content" id="content"required></textarea>
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-success"required>
												Send
											</button>
										</div>

										
									</form>
								</div>
								<div class="col-12">
									<hr/>
							</div>
							<div class="col-12">
								<h3>Comments</h3>
							</div>
							<div class="col-12">
								<?php
								$qry= "SELECT * FROM comments WHERE article_id='{$article['id']}' ORDER BY created_at DESC ";
							
								$res = db_query($con, $qry);
								if($res && db_num_rows($res) > 0):
								?>
								<?php while($comment = db_fetch_assoc($res)):?>
									<div class="col-12 py-2 comment">
										<div class="row">
											<div class="col-12">
												<?php echo $comment['content'];?>
											</div>
											<div class="col-12">
												<small><?php echo $comment['name'];?>(<?php echo $comment['email'];?>)</small>
											</div>
										</div>
									</div>
								<?php endwhile;?>
								<?php else:?>
									<div class="col-12 py-2 comment">
										<div class="row">
											
											<div class="col-12 text-center">
												<small>No Comment Posted Yet.</small>
											</div>
										</div>
									</div>
								<?php endif;?>
							</div>
						</div>
					</div>
						<div class="col-md-5">
							
							<?php

							$sql ="SELECT name,slug,featured_image FROM articles WHERE status ='published' AND published_at <='{$now}' AND id!='{$article['id']}' AND EXISTS(SELECT id FROM categories WHERE articles.category_id = categories.id AND categories.status = 'active' AND categories.id = '{$article['category_id']}') AND EXISTS(SELECT id FROM users WHERE articles.user_id = users.id AND users.status = 'active') ORDER BY published_at DESC LIMIT 2";

									$result = db_query($con, $sql);
								if($result && db_num_rows($result) > 0):
							?>
							<div class="row">
								<div class="col-12">
									<h3>Related Article</h3>
								</div>
								
							<?php while($related = db_fetch_assoc($result)):?>
								<div class="col-12">
							<div class="row  align-items-center list-article">
								<div class="col-4">
									<?php if(!empty($related['featured_image'])):?>
									<div class="list-thumbnail small" style="background-image:url(<?php echo url('images/'.$related['featured_image']); ?>)">
									</div>
									<?php else:?>
										<div class="list-thumbnail small" style="background-image:url(<?php echo url('images/download.png'); ?>)">
									</div>

								<?php endif; ?>
									
								</div>
								<div class="col-8">
									<a href="<?php echo url('article/'.$related['slug']);?>" class="list-title"><?php echo $related['name'];?></a>
								</div>
							</div>	
						</div>
							<?php endwhile; ?>

						</div>
						<div class="row">
							<div class="col-12">
								<hr/>
							</div>
						</div>
						
						<?php endif;?>
						<?php

							$sql ="SELECT name,slug,featured_image FROM articles WHERE status ='published' AND published_at <='{$now}' AND id!='{$article['id']}' AND EXISTS(SELECT id FROM categories WHERE articles.category_id = categories.id AND categories.status = 'active' ) AND EXISTS(SELECT id FROM users WHERE articles.user_id = users.id AND users.status = 'active') ORDER BY RAND() LIMIT 2";

									$result = db_query($con, $sql);
								if($result && db_num_rows($result) > 0):
							?>
							<div class="row">
								<div class="col-12">
									<h3>Recommended Article</h3>
								</div>
								
							<?php while($related = db_fetch_assoc($result)):?>
								<div class="col-12">
							<div class="row  align-items-center list-article">
								<div class="col-4">
									<?php if(!empty($related['featured_image'])):?>
									<div class="list-thumbnail small" style="background-image:url(<?php echo url('images/'.$related['featured_image']); ?>)">
									</div>
									<?php else:?>
										<div class="list-thumbnail small" style="background-image:url(<?php echo url('images/download.png'); ?>)">
									</div>

								<?php endif; ?>
									
								</div>
								<div class="col-8">
									<a href="<?php echo url('article/'.$related['slug']);?>" class="list-title"><?php echo $related['name'];?></a>
								</div>
							</div>	
						</div>
							<?php endwhile; ?>

						</div>
						<div class="row">
							<div class="col-12">
								<hr/>
							</div>
						</div>
						
						<?php endif;?>
						</div>
						</div>
					</div>
					
					</div>
			</main>
			<?php require_once'templates/footer.php';?>