<?php
	session_start();

	require_once 'db_connect.php';

	require_once '../view/header_principal.tpl';
	require_once '../view/filtrarSimulado.tpl';

	if (isset($_POST['filtrarSimulado'])) {
        $ano = $_POST['ano'];
       	$_SESSION['ano'] = $ano;
       	echo "<script>location.href='simulado.php';</script>";

		mysqli_close($connect);
    }

