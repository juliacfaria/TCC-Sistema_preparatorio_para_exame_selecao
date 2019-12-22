<?php
	session_start();

	require_once 'db_connect.php';

	require_once '../view/header_principal.tpl';
	require_once '../view/questionario1.tpl';

	if(isset ($_POST['enviar_formulario'])){

	    $avaliacao_site=$_POST['avaliacao'];
	    $nivel_prova=$_POST['nivelProva'];
	    $aprovacao=$_POST['aprovacao'];
	    $frequencia=$_POST['frequenciaSite'];
	    $utilidade=$_POST['utilidade'];
	    $indicacao=$_POST['indicacao'];
	    $sugestoes=$_POST['sugestoes'];
	    
	    $sql2="INSERT into questionario1 (avaliacao_site,nivel_prova,aprovacao,frequencia,utilidade,indicacao,sugestoes) values('$avaliacao_site','$nivel_prova','$aprovacao','$frequencia','$utilidade','$indicacao','$sugestoes')";
	    
	    if(mysqli_query($connect,$sql2)){
	    	$sql3="INSERT into questionario_has_usuario (idUsuarios,idQuestionarios) values(".$_SESSION['id'].",'1')";
	     	mysqli_query($connect,$sql3);
	    }else{
	    	echo "erro";
	    }

	   // echo "<script>location.href='feedback.php';</script>";
	}