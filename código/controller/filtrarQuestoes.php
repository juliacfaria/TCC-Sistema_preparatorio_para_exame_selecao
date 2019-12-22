<?php
	session_start();

	require_once 'db_connect.php';

	require_once '../view/header_principal.tpl';
	require_once '../view/filtrarQuestoes.tpl';

	if (isset($_POST['filtrarQuestoes'])) {
        $ano = $_POST['ano'];
        $materia = $_POST['materia'];
       	$_SESSION['materia'] = $materia;
       	$_SESSION['ano'] = $ano;
       	echo "<script>location.href='questoes.php';</script>";

		mysqli_close($connect);
    }

