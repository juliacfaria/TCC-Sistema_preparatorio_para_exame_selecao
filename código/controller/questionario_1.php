<?php
	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/questionario_1.php';

	if(isset ($_POST['enviar_form'])){

	    $avaliacao_site=$_POST['avaliacao'];
	    $nivel_prova=$_POST['nivelProva'];
	    $aprovacao=$_POST['aprovacao'];
	    $frequencia=$_POST['frequenciaSite'];
	    $utilidade=$_POST['utilidade'];
	    $indicacao=$_POST['indicacao'];
	    $sugestoes=$_POST['sugestoes'];
	    
	    $sql2="INSERT into questionario1 (avaliacao_site,nivel_prova,aprovacao,frequencia,utilidade,indicacao,sugestoes) values('$avaliacao_site','$nivel_prova','$aprovacao','$frequencia','$utilidade','$indicacao','$sugestoes')";
	    mysqli_query($connect,$sql2);

	    echo "<script>location.href='feedback.php';</script>";
	}