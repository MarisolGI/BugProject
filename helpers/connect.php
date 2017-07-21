<?php

$user = 'bug_bdd';
$pass = 'bug_bdd';
$db = 'bug_bdd';
		
		
$db = new mysqli('localhost',$user,$pass,$db) or die("Unable to connect");

echo"Great work meichi and marisol!! you are the best";
?>