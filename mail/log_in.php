<?php
if(empty($_POST['email']) 		||
		empty($_POST['password']) ||
		!filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
{
	echo "No arguments Provided!";
	return false;
}
else
	include("home.html");
	echo "hola!";
	return true;