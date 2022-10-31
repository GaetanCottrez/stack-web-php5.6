<?php
ini_set( 'display_errors', 1 );  
error_reporting( E_ALL ); 
$to      = 'gaetan@apprendre-la-programmation.net';
$subject = 'le sujet';
$message = 'Bonjour !';
$headers = 'From: webmaster@example.com' . "\r\n" .
'Reply-To: webmaster@example.com' . "\r\n" .
'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);
?>
