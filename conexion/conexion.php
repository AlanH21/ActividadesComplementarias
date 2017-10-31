<?php

	$con = 'mysql:dbname=act_complementarias;host=localhost';
	$user = 'AlanH';
	$password = '21MEDRANO97';

	try {
		$pdo = new PDO($con,$user,$password);
	} catch (Exception $e) {
		echo 'Error al conectarnos' .$e->getMessage();
	}

 ?>
