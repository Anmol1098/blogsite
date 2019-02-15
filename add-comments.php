<?php
require_once 'includes/init.php';
require_once 'includes/db_connection.php';

if(!empty($_POST)){
	extract($_POST);
	$now= date('Y-m-d H:i:s');
	$sql ="INSERT INTO comments SET name='{$name}', email='{$email}', content='{$content}', article_id='{$article_id}', created_at='{$now}'";
	
	
	$result =db_query($con, $sql);
	if($result){
		$_SESSION['message'] = [
		'content' => 'Comment Added',
		'type' => 'success'

	];
	redirect($_SERVER['HTTP_REFERER']);
	}else{
		$_SESSION['message'] = [
		'content' => 'Problem while adding comments',
		'type' => 'error'

	];
	redirect($_SERVER['HTTP_REFERER']);
	}


}else{
	$_SESSION['message'] = [
		'content' => 'Invalid action',
		'type' => 'error'

	];
	redirect($_SERVER['HTTP_REFERER']);
}

?>