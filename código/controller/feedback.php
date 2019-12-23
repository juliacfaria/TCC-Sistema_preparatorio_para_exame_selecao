<?php
	session_start();

	require_once 'db_connect.php';

	require_once '../view/header_principal.tpl';
	require_once '../view/feedback.tpl';

	$sql = "SELECT *  FROM questionario_has_usuario WHERE idUsuarios = ".$_SESSION['id'];

	$res = mysqli_query($connect,$sql);

	if(mysqli_num_rows($res) == 0){ 

	    if(isset($_POST['jaRealizouExame'])){

	        echo "<script>location.href='questionario1.php';</script>";
	    }

	    if(isset($_POST['naoRealizouExame'])){
	        echo "<script>location.href='questionario2.php';</script>";
	    }

	}else{
		// verifica se o usuario já respondeu o questionario que ele selecionou e retorna isso para o usuário
		$ja_respondeu_1 = 0;
		$ja_respondeu_2 = 0;

		while ($row = mysqli_fetch_array($res)) {
			if($row['idQuestionarios']==1 and isset($_POST['jaRealizouExame'])){
				echo "Você não pode fazer o questionario de resolução da prova pois ele ja foi realizado por você antes";
				$ja_respondeu_1 = 1;
			}else if ($row['idQuestionarios']==2 and isset($_POST['naoRealizouExame'])){
				echo "Você não pode fazer o questionario de antes de resovler a prova pois ele ja foi realizado por você antes";
				$ja_respondeu_2 = 1;
			}
		}

		if ($ja_respondeu_1 == 0 and isset($_POST['jaRealizouExame'])) {
			echo "<script>location.href='questionario1.php';</script>";
		}

		if ($ja_respondeu_2 == 0 and isset($_POST['naoRealizouExame'])) {
			echo "<script>location.href='questionario2.php';</script>";
		}
	}
?>