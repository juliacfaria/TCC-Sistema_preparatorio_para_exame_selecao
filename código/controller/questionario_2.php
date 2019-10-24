<?php
	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/questionario_2.php';

	if(isset ($_POST['enviar_form'])){
	    $frequencia=$_POST['frequenciaSite'];
	    $utilidade=$_POST['utilidade'];
	    $indicacao=$_POST['indicacao'];
	    $sugestoes=$_POST['sugestoes'];
	    
	    $sql2="INSERT into questionario2 (frequencia,utilidade,indicacao,sugestoes) values('$frequencia','$utilidade','$indicacao','$sugestoes')";
	    if(mysqli_query($connect,$sql2)){
	    	echo "sucesso";
	    }else{
	    	echo "erro";
	    }

	    echo "<script>location.href='feedback.php';</script>";
	}