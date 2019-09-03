<?php

	require_once "includs/header.php";

	require_once "includs/cadastro.php";

	

	//conectando
	require_once 'db_connect.php';	//não precisa copiar o código todo e colar aqui. Basta usar o "require_once"

	//sessoes
	session_start();

	//verificando se o botão foi clicado
	if (isset($_POST['entrar'])) {
        $nome = mysqli_escape_string($connect, $_POST['nome']);
		$senha = "123";
		$email = mysqli_escape_string($connect, $_POST['email']);
		$cidade = mysqli_escape_string($connect, $_POST['cidade']);
        $estado = mysqli_escape_string($connect, $_POST['estado']);
        $cep = mysqli_escape_string($connect, $_POST['cep']);

		$sql = "INSERT INTO usuarios(nome, cidade, estado,cep,email, senha) VALUES ('$nome', '$cidade', '$estado','$cep', '$email', '$senha')";	//insere no banco de dadoss

		if (mysqli_query($connect, $sql)) {	//verifica se conectou
			$_SESSION['mensagem'] = "cadastrado com sucesso";
			header("Location: ../login.php");
		}else{
			$_SESSION['mensagem'] = "erro ao cadastrar";
            echo "erro";
			//header("Location: ../index.php");
		}
        
    }