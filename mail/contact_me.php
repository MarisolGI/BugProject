<?php


// Check for empty fields


if(empty($_POST['name'])  		||
   empty($_POST['email']) 		||
   empty($_POST['phone']) 		||
   empty($_POST['message'])	||
   !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
   {
	echo "No arguments Provided!";
	return false;
   }

$name = strip_tags(htmlspecialchars($_POST['name']));
$email_address = strip_tags(htmlspecialchars($_POST['email']));
$phone = strip_tags(htmlspecialchars($_POST['phone']));
$message = strip_tags(htmlspecialchars($_POST['message']));
/*
   $name = 'marisol';
   $email_address = 'garciaitua@eisti.eu';
   $phone = '0782787605';
   $message = 'Ca marche baby';
  */

// Create the email and send the message
$to = 'marisol.garcia.ituarte@gmail.com'; // Add your email address inbetween the '' replacing yourname@yourdomain.com - This is where the form will send a message to.
$email_subject = "Bug Project Contact Form:  $name";
$email_body = "You have received a new message from your website contact form.\n\n"."Here are the details:\n\nName: $name\n\nEmail: $email_address\n\nPhone: $phone\n\nMessage:\n$message";
$headers = "From: noreply@bugproject.com\n"; // This is the email address the generated message will be from. We recommend using something like noreply@yourdomain.com.
$headers .= "Reply-To: $email_address";	


//$status = mail($to,$email_subject,$email_body,$headers);

if (mail($to,$email_subject,$email_body,$headers)) {
	echo '<p>Your message has been sent!</p>';
} else {
	echo '<p>Something went wrong, go back and try again!</p>';
	echo($status);
}

//$status = mail($to,$email_subject,$email_body,$headers);

//$status = mail("marisol.garcia.ituarte@gmail.com","Success","Great, Localhost Mail works");




//return true;		
 

?>
