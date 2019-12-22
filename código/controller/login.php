<?php
    //sessoes
	session_start();

	//conectando
	require_once 'db_connect.php';

	//view
	require_once '../view/header.tpl';
	require_once '../view/login.tpl';


	if (isset($_POST['entrar'])) {
		
		$email = mysqli_escape_string($connect, $_POST['email']);	
		$senha = mysqli_escape_string($connect, $_POST['senha']);

		if (empty($email) or empty($senha)) {	
			echo "Os campos não podem estar vazios!";

		}else{	

			$sql = "SELECT * FROM usuarios WHERE email='$email'";
			$verifica_no_banco = mysqli_query($connect, $sql);

			if (mysqli_num_rows($verifica_no_banco) > 0) {	
				$dado = mysqli_fetch_array($verifica_no_banco);
				$senhadb = $dado['senha'];

				if (password_verify($senha, $senhadb)) {

					echo "Verificação completa";
					$_SESSION['logado'] = true;	
					$_SESSION['id'] = $dado['idUsuarios']; //salva o id do usuario
					echo "<script>location.href='plano.php';</script>";

				}else{
					echo "Email e/ou senha incorreto(s)";
				}

			}else{
				echo "Usuário não cadastrado";
			}
			
		}
	}

	mysqli_close($connect);

?>
