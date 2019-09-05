<?php
	session_start();

	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';

	require_once 'includs/ranking.php';

    $sql = "SELECT * FROM usuarios ORDER BY pontuacao DESC";
    $res = mysqli_query($connect,$sql);
    if (mysqli_num_rows($res)>0){
       $cont = 1;
       while ($row = mysqli_fetch_array($res)){
            echo "<tr>";
                   
            echo "<td>".$cont."°</td>";
            echo "<td>".$row['nome']."</td>";
            echo "<td>".$row['pontuacao']."</td>";
            if($cont<=5){
            	echo "<td><span class='glyphicon glyphicon-plane'>&ensp;</span></td>";
            }else if($cont<=10){
            	echo "<td><span class='glyphicon glyphicon-send'>&ensp;</span></td>";
            }else{
            	echo "<td><span class='glyphicon glyphicon-book'>&ensp;</span></td>";
            }

            echo "</tr>";
            $cont++;
        }
    }
       
    echo "</table>";


