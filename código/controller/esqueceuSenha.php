<?php
	  session_start();

	  require_once '../view/header.tpl';
	  require_once '../view/esqueceuSenha.tpl';
	  require_once 'db_connect.php';

/*
	  date_default_timezone_set('America/Sao_Paulo');
	  ini_set('smtp_port', '587');
	  if(isset($_POST['recuperar'])){
	    //filtra caracteres especiais
	    $email = strip_tags(filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING));
	    //$sql = "SELECT * FROM usuarios WHERE email = '$email'";
	    //$verificar = mysqli_query($connect,$sql);
	    //if(mysqli_num_rows($verificar) == 1){
	    	echo "entrou!!!";
	      $codigo = base64_encode($email);
	      $data_expirar = date('Y-m-d H:i:s', strtotime('+1 day'));
	      $mensagem ="<html>
	                    <head></head>
	                      <body>
	                        <h1>Reservas de Salas - ENE</h1><br>
	                        <h2>Recebemos uma tentativa de recuperação de senha para este e-mail.</h2>
	                        <p>Caso não tenha solicitado, por favor, desconsidere este e-mail. Caso contrário clique no link abaixo para alterar a senha.<br><br>
	                        <a href= http://homol.redes.unb.br/ptr012017-B-grupoA/recuperar/recuperar.php?codigo=".$codigo.">Recuperar Senha</a></p><br><br>
	                        <p>Departamento de Engenharia Elétrica</p>
	                      </body>
	                  </html>";
	      $email_remetente = 'reservado.ene@gmail.com';
	      $assunto = 'Recuperação de senha';
	      $headers = "Content-type: text/html; charset=utf-8\r\n";
	      $inserir =  mysqli_query($connect,"INSERT INTO codigos SET codigo = '$codigo', data = '$data_expirar'");
	      if($inserir) {
	        if(mail("$email","$assunto","$mensagem", $headers, "-f$email_remetente")){
	          header('Location: ../index.html?SUCESS=2'); //Verifique seu e-mail para obter nova senha!
	        }
	      }
	    } else {
	      header('Location: ../index.html?ERROR=6'); //  E-mail digitado não está cadastrado.
	    }
	  }
*/

	  $email = @$_POST['email'];
     
    $destinatario = $email;
    $remetente = "xxxxxxxxxxxxxxxxxxxx";
     
         
    if ($email <> ""){

    	$sql = "SELECT nome,email,senha FROM usuarios WHERE email='$email'";
         
        $res = mysqli_query($connect,$sql);
        $contador = mysqli_num_rows($res);
         
        if ($contador == 1){
            while($resultado = mysqli_fetch_array($res)){
                $nome  = $resultado['nome'];
                $email = $resultado['email'];
                $senha = $resultado['senha'];
            }
             
                $corpo_email  = "Ola $nome, o procedimento de recuperar dados, foi efetuado com sucesso !\n..";
                $corpo_email .= "Seu email = ".$email."\n.. ";
                $corpo_email .= "Senha de acesso = ".$senha."\n..";                
                $corpo_email .= "Nao responda esse email, e-Mail automatizado";    

                $headers =  'MIME-Version: 1.0' . "\r\n"; 
				$headers .= 'From: Your name <info@address.com>' . "\r\n";
				$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 

				
/*
For Win32 only.
 http://php.net/smtp
SMTP = localhost
 http://php.net/smtp-port
smtp_port = 25

 For Win32 only.
 http://php.net/sendmail-from
 sendmail_from = edufel1p3@gmail.com

 For Unix only.  You may supply arguments as well (default: "sendmail -t -i").*/
 //http://php.net/sendmail-path

                mail($destinatario,"Recuperacao de Senha",$corpo_email,"From: webmaster@example.com" . "\r\n" .
"CC: somebodyelse@example.com");

                 
                echo "<div align=center><font size=2 face=Verdana, Arial, Helvetica, sans-serif>Sua senha foi enviada com sucesso                      para o email: $email.</font></div>";
     
                }else{
                    echo "<div align=center><font size=2 face=Verdana, Arial, Helvetica, sans-serif>Seu login ou email está incor                           reto.</font></div>";
                     }
        }
?>