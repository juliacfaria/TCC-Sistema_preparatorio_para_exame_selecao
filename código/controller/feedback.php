<?php
	require_once 'includs/header_principal.php';
	require_once 'includs/feedback.php';
	//require_once 'includs/footer.php';

    if(isset($_POST['exPositivo'])){
        echo "<script>location.href='questionario_1.php';</script>";
    }

    if(isset($_POST['exNegativo'])){
        echo "<script>location.href='questionario_2.php';</script>";
    }
?>