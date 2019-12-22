<?php
    session_start(); //OBS: session deve ser enviada antes do conteúdo HTML

    require_once 'db_connect.php';
	
	require_once '../view/header_principal.tpl';
   

    //view : divisão das colunas e inicialização da tabela
    echo " 
        <div class='container-fluid text-center'>    
          <div class='row content'>


            <div class='col-sm-2'>
            </div>


            <div class='col-sm-8 text-left'> 

                <br>
                <table class='table table-striped'>
                    <tr>
                        <th>Posição</th>
                        <th>Nome</th>
                        <th>Pontuação</th>
                    </tr>

    ";

    $sql = "SELECT desempenho.certasTotal, usuarios.nome FROM desempenho JOIN usuarios ON desempenho.usuarios_idUsuarios = usuarios.idUsuarios ORDER BY desempenho.certasTotal DESC";
    $res = mysqli_query($connect,$sql);

    if (mysqli_num_rows($res)>0){
       $cont = 1;

       while ($row = mysqli_fetch_array($res)){
            echo "<tr>";
                   
                echo "<td>".$cont."°</td>";
                echo "<td>".$row['nome']."</td>";
                echo "<td>".$row['certasTotal']."</td>";

            echo "</tr>";
            $cont++;
        }

    }
       
    echo "   </table>

         </div> <!-- fechando a div que define as 8 colunas -->

        <div class='col-sm-2 '>
        </div> 

      </div> <!-- fechando a div row -->
    </div>   <!-- fechando a div container -->
";