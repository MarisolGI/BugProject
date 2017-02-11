<?php

$user = 'root';
$pass = '';
$db = 'bug_bdd';
		
		
$db = new mysqli('localhost',$user,$pass,$db) or die("Unable to connect");

echo"Great work meichi and marisol!! you are the best";
?>