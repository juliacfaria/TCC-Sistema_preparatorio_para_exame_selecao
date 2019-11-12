<?php

	require_once "includs/header.php";

	require_once "includs/login.php";

	

	//conectando
	require_once 'db_connect.php';	//não precisa copiar o código todo e colar aqui. Basta usar o "require_once"

	//sessoes
	session_start();

	//verificando se o botão foi clicado
	if (isset($_POST['entrar'])) {
		
		$erros = [];
		$email = mysqli_escape_string($connect, $_POST['email']);	//filtrando os dados, usando a própria função do sql. O primeiro parâmetro é o connect do arquivo 'db_connect' e o segundo é o conteúdo
		$senha = mysqli_escape_string($connect, $_POST['senha']);

		if (empty($email) or empty($senha)) {	//verifica se os campos de email ou senha estão vazios
			$erros[] = "Todos os campos precisam ser preenchidos";
			echo "campos vazios n da irmao";

		}else{	//vai verificar se o email e senha estão contidos no banco de dados
			$sql = "SELECT email from usuarios WHERE email = '$email'"; 	//select do banco de dados
			$resultado = mysqli_query($connect, $sql);

			if (mysqli_num_rows($resultado) > 0) {	//se for maior que 0, existe registro
				//$senha = md5($senha);		//criptografando senha
				$sql = "SELECT * FROM usuarios WHERE email='$email'";
				$busca = mysqli_query($connect, $sql);
				$dado = mysqli_fetch_array($busca);
				$senhadb = $dado['senha'];

				if (password_verify($senha, $senhadb)) {
					echo "ta verificado irmao";
					$_SESSION['logado'] = true;	//salvando dados na session
					$_SESSION['id'] = $dado['idUsuarios'];
					header('Location: principal.php');
				}
				/*
				$sql = "SELECT * from usuarios WHERE email = '$email' AND senha = '$senha'";	//verifica se há um login e uma senha igual aos digitados pelo usuário
				$resultado = mysqli_query($connect, $sql);

				if(mysqli_num_rows($resultado) == 1){
					$dados = mysqli_fetch_array($resultado);	//converte o resultado em um array e atribui à variável dados
					$_SESSION['logado'] = true;	//salvando dados na session
					$_SESSION['id_usuario'] = $dados['id'];
					header('Location: principal.php');	//encaminha para outra page
				}*/
				else{
					$erros[] = "Usuário e senha não conferem";
					echo "email e senha nao conferem irmao";
				}

			}else{
				$erros[] = "Usuário inexistente";	//mostra o erro caso não exista o usuário
				echo "usuario nao existe irmao";
			}
			
			if(!empty($erros)){	//verifica se o array erros não está vazio e, se conter erros, exibe-os na tela
			foreach ($erros as $erro) {
				echo $erro;
			}
		}

		}
	}

	mysqli_close($connect);


	

	require_once "includs/footer.php";

?>
