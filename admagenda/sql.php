<?php
   $host = "localhost";//caso esteja usando o xampp ou wamp
   $user = "root";
   $pass = "";
   $db = "sql";
   $conn = mysql_connect($host, $user, $pass,$db) or die (mysql_error());
   ?>