<?php
	session_start();
	require_once 'includs/header_principal.php';

	require_once 'includs/principal.php';

	

	require_once 'db_connect.php';

	

	//verificando se a sessao existe
	/*if (!isset($_SESSION['logado'])) {
		header("Location: login.php");
	}
*/
	//dados usuário
	/*$id = $_SESSION['id_usuario'];
	$sql = "SELECT * from usuarios where id = '$id'";
	$resultado = mysqli_query($connect, $sql);
	$dados = mysqli_fetch_array($resultado);*/

	//fechando a conexão. Boa prática
	mysqli_close($connect);

	echo "<a href='logout.php'>Sair</a>";
	require_once 'includs/footer_principal.php';
?>

	

