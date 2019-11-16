<?php
//conexão com banco de dados

//definindo váriaveis
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "tcc";
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBNAME', 'tcc');

//conectando
$connect = mysqli_connect($servername, $username, $password, $db_name); //parâmetros são as variáveis criadas anteriormente, os nomes são autoexplicativos
$conn = new PDO('mysql:host=' . HOST . ';dbname=' . DBNAME . ';', USER, PASS);
mysqli_set_charset($connect,"utf-8");

//o mysqli tem suporte à orientação de objetos e ao php procedural, já o pdo só suporta a orientação a objetos

if(mysqli_connect_error()){	//verifica se deu algum erro na conexão
	echo "falha na conexão ao banco de dados ".mysqli_connect_error();
} 
