<?php
	//conectando
	require_once 'db_connect.php';	//não precisa copiar o código todo e colar aqui. Basta usar o "require_once"


	//sessoes
	session_start();


	require_once "includs/header.php";

	require_once "includs/cadastro.php";
	

	//verificando se o botão foi clicado
	if (isset($_POST['cadastrar'])) {
        $nome = mysqli_escape_string($connect, $_POST['nome']);
        $senha = mysqli_escape_string($connect, $_POST['senha']);
		$senha = password_hash($senha, PASSWORD_DEFAULT);
		$email = mysqli_escape_string($connect, $_POST['email']);
		$cidade = mysqli_escape_string($connect, $_POST['cidade']);
        $estado = $_POST['estado'];
        $telefone = mysqli_escape_string($connect, $_POST['telefone']);
        $cursoInteresse = $_POST['curso'];
        $data = $_POST['data'];
        $genero = $_POST['genero'];
        $cpf = mysqli_escape_string($connect, $_POST['cpf']);

		$sql = "INSERT INTO usuarios(nome, email, senha, cpf, cidade, estado, telefone, curso,genero,data,moderador) VALUES ('$nome','$email','$senha','$cpf','$cidade','$estado','$telefone','$cursoInteresse','$genero','$data','0')";	//insere no banco de dadoss
		

		if (mysqli_query($connect, $sql)) {	//verifica se conectou
			$_SESSION['mensagem'] = "cadastrado com sucesso";
			echo "<script>location.href='login.php';</script>";
			//header('Location: login.php');
		}else{
			$_SESSION['mensagem'] = "erro ao cadastrar";
			echo "<script>location.href='cadastro.php';</script>";
            //header('Location: ../controller/principal.php');
			//header("Location: ../index.php");
		}

		mysqli_close($connect);
    }

    require_once "includs/footer.php";