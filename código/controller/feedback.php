<?php
	require_once 'includs/header_principal.php';
	require_once 'includs/feedback.php';
	//require_once 'includs/footer.php';

    if(isset($_POST['exPositivo'])){
        header("Location: questionario_1.php");
    }

    if(isset($_POST['exNegativo'])){
        header("Location: questionario_2.php");
    }
?>