<?php
	session_start();

	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/adicionarQuestoes.php';

	if (isset($_POST['adicionar'])) {
        $enunciado1 = mysqli_escape_string($connect, $_POST['enunciado1']);
        $enunciado2 = mysqli_escape_string($connect, $_POST['enunciado2']);
		$pedidoQuestao = mysqli_escape_string($connect, $_POST['pedidoQuestao']);
		$a = mysqli_escape_string($connect, $_POST['a']);
		$b = mysqli_escape_string($connect, $_POST['b']);
		$c = mysqli_escape_string($connect, $_POST['c']);
		$d = mysqli_escape_string($connect, $_POST['d']);
        $correta = $_POST['correta'];
        $ano = $_POST['ano'];
        $materia = $_POST['materia'];


        $sql2 = "SELECT MAX('id') as maximo FROM 'questoes'";
        $res = mysqli_query($sql2,$connect);
        $res = mysqli_fetch_array($res);

        $id = $res['maximo'] + 1;
        echo "$id";

        if(isset($_POST['arquivo'])){

	        $formatos_permitidos = ["png","jpeg","jpg","gif"];  //Lista de formatos permitidos
	        $extensao = pathinfo($_FILES['arquivo']['name'], PATHINFO_EXTENSION);   //pega a extensão do arquivo

	        if (in_array($extensao, $formatos_permitidos)) {    //verifica se está contido no array
	        //verifica se a extensao está contida no array das extensoes permitidas
	            $pasta="../imagens/imagensQuestoes";
	            $temporario= $_FILES['arquivo']['tmp_name'];
	            $novo_nome = $id.".$extensao";

	            if (move_uploaded_file($temporario, $pasta.$novo_nome)) {	//verifica se o upload foi realizado
	                echo "Upload feito com sucesso!";

	                $sql = "INSERT INTO questoes(enunciado, a, b, c, d, imagem, enunciado2, pedidoQuestao,correta,materia,ano) VALUES ('$enunciado1','$a','$b','$c','$d','$imagem','$enunciado2','$pedidoQuestao','$correta','$materia','$ano')";	//insere no banco de dadoss
		

					if (mysqli_query($connect, $sql)) {	//verifica se conectou
						$_SESSION['mensagem'] = "inserido com sucesso";
						echo "sucesso";
						//header('Location: login.php');
					}else{
						$_SESSION['mensagem'] = "erro ao inserir";
						echo "erro";
			            //header('Location: ../controller/principal.php');
						//header("Location: ../index.php");
					}
	            }else{
	                echo "ERRO! Não foi possível realizar o upload";
	            }
        }
   }else{

		$sql = "INSERT INTO questoes(enunciado, a, b, c, d, enunciado2, pedidoQuestao,correta,materia,ano) VALUES ('$enunciado1','$a','$b','$c','$d','$enunciado2','$pedidoQuestao','$correta','$materia','$ano')";	//insere no banco de dadoss
		

		if (mysqli_query($connect, $sql)) {	//verifica se conectou
			$_SESSION['mensagem'] = "inserido com sucesso";
			echo "sucesso";
			//header('Location: login.php');
		}else{
			$_SESSION['mensagem'] = "erro ao inserir";
			echo "erro";
            //header('Location: ../controller/principal.php');
			//header("Location: ../index.php");
		}
	}

		mysqli_close($connect);
    }

