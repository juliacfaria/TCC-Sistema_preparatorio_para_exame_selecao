<?php
	session_start();

	require_once 'db_connect.php';

	require_once '../view/header_principal.tpl';
	require_once '../view/adicionarQuestoes.tpl';



	if (isset($_POST['adicionarQuestoes'])) {
		
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
       

        if($_FILES['foto1']['size']>0){

	        $formatos_permitidos = ["png","jpeg","jpg","gif"];  //Lista de formatos permitidos
	        $extensao_arquivo = pathinfo($_FILES['foto1']['name'], PATHINFO_EXTENSION);   

	        if (in_array($extensao_arquivo, $formatos_permitidos)) {  

	            $pasta="../imagens/imagensQuestoes/";
	            $temporario= $_FILES['foto1']['tmp_name'];
	            $valor = rand(0,10000);
	            $novo_nome = "$valor.$extensao";

			    if (move_uploaded_file($temporario, $pasta.$novo_nome)) {	//verifica se o upload foi realizado
	                echo "Upload feito com sucesso!";

	                $sql = "INSERT INTO questoes(enunciado, a, b, c, d, imagem, enunciado2, pedidoQuestao,correta,materia,ano) VALUES ('$enunciado1','$a','$b','$c','$d','$novo_nome','$enunciado2','$pedidoQuestao','$correta','$materia','$ano')";

					if (mysqli_query($connect, $sql)) {	//verifica se conectou

						$_SESSION['mensagem'] = "inserido com sucesso";
						echo "sucesso";

					}else{

						$_SESSION['mensagem'] = "erro ao inserir";
						echo "erro";

					}

	            }else{
	                echo "ERRO! Não foi possível realizar o upload";
	            }

        	}
   		}else{
			$sql = "INSERT INTO questoes(enunciado, a, b, c, d, enunciado2, pedidoQuestao,correta,materia,ano) VALUES ('$enunciado1','$a','$b','$c','$d','$enunciado2','$pedidoQuestao','$correta','$materia','$ano')";		

			if (mysqli_query($connect, $sql)) {	//verifica se conectou
				
				$_SESSION['mensagem'] = "inserido com sucesso";
				echo "sucesso";

			}else{

				$_SESSION['mensagem'] = "erro ao inserir";
				echo "erro";
			}
		}

		mysqli_close($connect);
    }

