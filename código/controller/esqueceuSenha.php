<?php
	session_start();
	require_once 'includs/header.php';
    require_once 'includs/esqueceuSenha.php';

    if (isset($_POST['enviar'])) {
    	if (!empty($_POST['email'])) {
    		$email = $_POST['email'];
    	}
    }

    require_once "includs/footer.php";
?>