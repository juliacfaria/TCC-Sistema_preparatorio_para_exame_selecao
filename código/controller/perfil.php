<?php
	session_start();

	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/perfil.php';

	$id = $_SESSION['id'];

	function dados($id,$connect){
		$sql = "SELECT * from usuarios where idUsuarios = '$id'";
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

		echo "<script type='text/javascript'>	
					document.getElementsByName( 'pontuacao' )[0].value = '$pontuacao';
			</script>";
	}

	

	if (isset($_POST['atualizar'])) {
		if (!empty($_POST['nome']) and !empty($_POST['email']) and !empty($_POST['cidade']) and !empty($_POST['telefone']) and !empty($_POST['cpf'])) {
			$nome = mysqli_escape_string($connect, $_POST['nome']);
			$email = mysqli_escape_string($connect, $_POST['email']);
			$cidade = mysqli_escape_string($connect, $_POST['cidade']);
	        $estado = $_POST['estado'];
	        $telefone = mysqli_escape_string($connect, $_POST['telefone']);
	        $cursoInteresse = $_POST['curso'];
	        $data = $_POST['data'];
	        $genero = $_POST['sexo'];
	        $cpf = mysqli_escape_string($connect, $_POST['cpf']);

	        $sql3 = "UPDATE usuarios SET nome = '$nome', email = '$email', cidade = '$cidade', estado = '$estado', telefone = $telefone, curso = '$cursoInteresse', data = '$data', genero = '$genero', cpf='$cpf' WHERE idUsuarios='$id'";

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

				$sql2 = "UPDATE usuarios SET senha='$senha' WHERE idUsuarios='$id'";

		        if (mysqli_query($connect, $sql2)) {	//verifica se conectou
					$_SESSION['mensagem'] = "senha atualizada com sucesso";
					echo "senha atualizada com sucesso";
				}else{
					$_SESSION['mensagem'] = "erro ao atualizar senha";
					echo "erro ao atualizar senha";
				}
			}
			dados($id,$connect);
		    mysqli_close($connect);
		    echo "<script>location.href='perfil.php';</script>";
		}

	}

	if (isset($_POST['excluir'])) {
		/*
		echo "<div class='modal' tabindex='-1' role='dialog' id='modal".$id."'>
		  <div class='modal-dialog' role='document'>
		    <div class='modal-content'>
		      <div class='modal-header'>
		        <h5 class='modal-title'>Modal title</h5>
		        <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
		          <span aria-hidden='true'>&times;</span>
		        </button>
		      </div>
		      <div class='modal-body'>
		        <p>Modal body text goes here.</p>
		      </div>
		      <div class='modal-footer'>
		        <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
		        <button type='button' class='btn btn-primary'>Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>";
		*/
		//$sql5 = "DELETE from usuarios where id = '$id'";

		if (mysqli_query($connect, $sql5)) {	//verifica se conectou
			$_SESSION['mensagem'] = "conta";
			echo "conta apagada com sucesso";
			echo "<script>location.href='login.php';</script>";
			session_unset();
			session_destroy();
		}else{
			$_SESSION['mensagem'] = "erro ao apagar conta";
			echo "erro ao apagar conta";
		}
		
		mysqli_close($connect);

	}

	if (isset($_POST['mudarFoto'])) {
		
	}

	dados($id,$connect);

	
	

	//require_once 'includs/footer.php';
