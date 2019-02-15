<?php
require_once 'includes/init.php';
require_once 'includes/db_connection.php';

$sql ="SELECT * FROM categories WHERE slug= '{$_GET['slug']}' AND status ='active'";

						
						
						

$result =db_query($con, $sql);
if(!$result || db_num_rows($result) <= 0){
	die('page not found');

}
$cat =db_fetch_assoc($result);
$title =$cat['name'];

require_once 'templates/header.php';
$active =$cat['slug'];
require_once 'templates/nav.php';

?>


			
			<main class="row">
				<div class="col-12 py-3">
					
					
					<div class="row">
						<?php
					$now = date('Y-m-d H:i:s');

					$sql ="SELECT COUNT(id) AS total FROM articles  WHERE status ='published' AND published_at <='{$now}' AND EXISTS (SELECT id FROM categories WHERE articles.category_id = categories.id AND categories.status = 'active' AND categories.slug= '{$_GET['slug']}') AND EXISTS (SELECT id FROM users WHERE articles.user_id = users.id AND users.status = 'active')";

					        $result =  db_query($con, $sql);
							 $ret = db_fetch_assoc($result);
							 $total = $ret['total'];
							  $limit = 1;
							 $totalPages = ceil($total/$limit);

							 if(isset($_GET['page']) && !empty($_GET['page'])) {
							 	$page = $_GET['page'];



							 	if($page > $totalPages){
							 		$page = $totalPages;
							 	}

							 }
							 else
							 {
							 	$page = 1;
							 }

							 $offset = ($limit * $page) - $limit;
					

						$sql ="SELECT name, slug, featured_image FROM articles  WHERE status ='published' AND published_at <='{$now}' AND EXISTS (SELECT id FROM categories WHERE articles.category_id = categories.id AND categories.status = 'active' AND categories.slug= '{$_GET['slug']}') AND EXISTS (SELECT id FROM users WHERE articles.user_id = users.id AND users.status = 'active') ORDER BY published_at DESC LIMIT {$offset}, {$limit}";
					
						 
						
						
					
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
					<div class="row">
						<?php if($totalPages > 1): ?>
					<div class="col-12">
						<nav>
  			<ul class="pagination">
  			<?php if($page == 1): ?>	
  
    	<li class="page-item disabled">
      	<a class="page-link" href="#" tabindex="-1"><i class = "fas fa-angle-left"></i> </a>
    	</li>
    	<?php else:?>
    		<li class="page-item">
      	<a class="page-link" href="<?php echo url('category/'.$_GET['slug'].'/'.($page - 1)) ?>"> <i class = "fas fa-angle-left"></i> </a>

    	<?php endif; ?>
    	<?php for($i = 1; $i <=$totalPages; $i++): ?>
    		<?php if($i == $page): ?>
    	<li class="page-item active">
     	<a class="page-link" href="#"><?php echo $i; ?> </a>
     	</li>
     	<?php else: ?>
 <li class="page-item"><a class="page-link" href="<?php echo url('category/'.$_GET['slug'].'/'.$i); ?>"><?php echo $i; ?></a></li>
 <?php endif; ?>
     	 
     <?php endfor; ?>
     <?php if($page < $totalPages):?>
     	
    	 <li class="page-item">
     		 <a class="page-link" href="<?php echo url('category/'.$_GET['slug'].'/'.($page+1));?>"><i class="fas fa-angle-right"></i></a>
    			</li>
    			<?php else: ?>
    				<li class="page-item disabled">
      	<a class="page-link" href="#" tabindex="-1"><i class = "fas fa-angle-right"></i> </a>
    	</li>
    <?php endif; ?>
    		</ul>
    		</nav>
					</div>
				<?php endif; ?>
					</div>
				</div>
			</main>
			<?php require_once'templates/footer.php';?>