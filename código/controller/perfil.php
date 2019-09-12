<?php
	session_start();

	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/perfil.php';


	$id = $_SESSION['id'];
	/*
	if (isset($_POST['atualizar'])) {
		if (!empty($_POST['nome']) and !empty($_POST['email']) and !empty($_POST['cidade']) and !empty($_POST['telefone']) and !empty($_POST['cpf'])) {
			$nome = mysqli_escape_string($connect, $_POST['nome']);
			$email = mysqli_escape_string($connect, $_POST['email']);
			$cidade = mysqli_escape_string($connect, $_POST['cidade']);
	        $estado = $_POST['estado'];
	        $telefone = mysqli_escape_string($connect, $_POST['telefone']);
	        $cursoInteresse = $_POST['curso'];
	        $data = $_POST['data'];
	        $genero = $_POST['genero'];
	        $cpf = mysqli_escape_string($connect, $_POST['cpf']);

	        $sql3 = "UPDATE usuarios SET nome='$nome',email='$email',cidade='$cidade',estado='$estado',telefone=$telefone,curso='$cursoInteresse',data='$data',genero='$genero',cpf='$cpf' WHERE id='$id";

	        if (mysqli_query($connect, $sql3)) {	//verifica se conectou
				$_SESSION['mensagem'] = "atualizado com sucesso";
				echo "atualizado com sucesso";
			}else{
				$_SESSION['mensagem'] = "erro ao atualizar";
				echo "erro ao atualizar";
			}

			if(!empty($_POST['senha'])){
				$senha = mysqli_escape_string($connect, $_POST['senha']);
				$senha = password_hash($senha, PASSWORD_DEFAULT);

				$sql2 = "UPDATE usuarios SET senha='$senha' WHERE id='$id";

	        if (mysqli_query($connect, $sql)) {	//verifica se conectou
				$_SESSION['mensagem'] = "senha atualizada com sucesso";
				echo "senha atualizada com sucesso";
			}else{
				$_SESSION['mensagem'] = "erro ao atualizar senha";
				echo "erro ao atualizar senha";
			}

			}


	        mysqli_close($connect);

		}
		

			//insere no banco de dadoss
		

		

	}
*/


	
	$sql = "SELECT * from usuarios where id = '$id'";
	$res = mysqli_query($connect,$sql);
	$res = mysqli_fetch_array($res);
	$nome = $res['nome'];
	$email = $res['email'];
	$cpf = $res['cpf'];
	$cidade = $res['cidade'];
	$telefone = $res['telefone'];
	$estado = $res['estado'];
	$data = $res['data'];
	$curso = $res['curso'];
	$sexo = $res['genero'];


	echo "<script type='text/javascript'>	
				document.getElementsByName( 'nome' )[0].value = '$nome';
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'email' )[0].value = '$email';
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'cpf' )[0].value = '$cpf';
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'cidade' )[0].value = '$cidade';
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'estado' )[0].value = '$estado';
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'telefone' )[0].value = '$telefone';
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'data' )[0].value = '$data';
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'sexo' )[0].value = '$sexo'
		</script>";

	echo "<script type='text/javascript'>	
				document.getElementsByName( 'curso' )[0].value = '$curso';
		</script>";

	//require_once 'includs/footer.php';