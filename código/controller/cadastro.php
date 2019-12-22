<?php
	//conectando
	require_once 'db_connect.php';	

	//view
	require_once '../view/header.tpl';
	require_once '../view/cadastro.tpl';



	//verificando se o botão foi clicado
	if (isset($_POST['cadastrar'])) {

        $nome = mysqli_escape_string($connect, $_POST['nome']);
        $senha = mysqli_escape_string($connect, $_POST['senha']);
		$senha = password_hash($senha, PASSWORD_DEFAULT);
		$email = mysqli_escape_string($connect, $_POST['email']);
		$cidade = mysqli_escape_string($connect, $_POST['cidade']);
        $estado = $_POST['estado'];
        $telefone = mysqli_escape_string($connect, $_POST['telefone']);
        $curso_interesse = $_POST['curso'];
        $data = $_POST['data'];
        $genero = $_POST['genero'];
        $cpf = mysqli_escape_string($connect, $_POST['cpf']);


		$sql = "INSERT INTO usuarios(nome, email, senha, cpf, cidade, estado, telefone, curso,genero,data,moderador) VALUES ('$nome','$email','$senha','$cpf','$cidade','$estado','$telefone','$curso_interesse','$genero','$data','0')";	


		if (mysqli_query($connect, $sql)) {	//verifica se conectou
			
			$sql2 = "SELECT idUsuarios from usuarios where email = '$email'";

			if ($res = mysqli_query($connect, $sql2)) { //etapa para inicializar a pontuação
				$row = mysqli_fetch_array($res);
				$id = $row['idUsuarios'];

				$sql3 = "INSERT INTO `desempenho`(`certasTotal`, `erradasTotal`, `certasMat`, `erradasMat`, `certasPort`, `erradasPort`, `certasCien`, `erradasCien`, `certasGeo`, `erradasGeo`, `certasHist`, `erradasHist`, `usuarios_idUsuarios`) VALUES (0,0,0,0,0,0,0,0,0,0,0,0,'$id')";	//insere no banco de dadoss

				if(mysqli_query($connect, $sql3)){
					echo "inseriu";
				}

			}			
			echo "<script>location.href='login.php';</script>";
		
		}else{
			echo "<script>location.href='cadastro.php';</script>";
		}

    }