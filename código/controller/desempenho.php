<!DOCTYPE html>
<html lang="pt-br">
  <head>
<meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="estilo_principal.css">
      <link rel="stylesheet" type="text/css" href="estilo.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Olá, mundo!</title>
  </head>
  <body>
 <?php
session_start();
require_once '../view/header_principal.tpl';
  require_once 'db_connect.php';
$sql = "SELECT * FROM desempenho";
$res = mysqli_query($connect,$sql);
while($row=mysqli_fetch_array($res)){
  // aqui vai a variavel de sessao no lugar do 1.
  if($row['usuarios_idUsuarios'] == $_SESSION['id']){
    $certasMat = $row['certasMat'];
    $certasPort = $row['certasPort'];
    $certasCien = $row['certasCien'];
    $certasGeo = $row['certasGeo'];
    $certasHist = $row['certasHist'];
    $erradasMat = $row['erradasMat'];
    $erradasPort = $row['erradasPort'];
    $erradasCien = $row['erradasCien'];
    $erradasGeo = $row['erradasGeo'];
    $erradasHist = $row['erradasHist'];
  }
}
?>   
      <div class="container-fluid text-center">  
          <div class="row content">
              <div class="col-sm-3">
              </div>          
              <div class="col-sm-3">
                  <canvas class="line-chart2" width="9" height="10px"></canvas>
              </div>
              <div class="col-sm-3 text-center">
                  <canvas class="line-chart" width="9" height="10px"></canvas>
                  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
                  <script>
                      var ctx = document.getElementsByClassName("line-chart");
                      // Type, Data e options cor reserva: 227,65,151;
                      var chartGraph = new Chart(ctx, {
                          type: 'doughnut',
                          data: {
                              labels: ["Mat", "Port", "ciencias", "história","geografia"],
                              datasets: [
                                  {
                                      label: "NOTAS POR MATÉRIA",
                                      data: [<?php echo $erradasMat; ?>, <?php echo $erradasPort; ?>, <?php echo $erradasCien; ?>, <?php echo $erradasGeo; ?>, <?php echo $erradasHist; ?>],
                                      borderWidth: 6,
                                      borderColor: ['rgba(0, 169, 141,0.85)','rgba(1, 147, 207,0.85)','rgba(1, 84, 132,0.85)','rgba(108, 68, 156,0.85)','rgba(162, 68, 154,0.85)'],
                                      backgroundColor: ['rgba(0, 169, 141,0.85)','rgba(1, 147, 207,0.85)','rgba(1, 84, 132,0.85)','rgba(108, 68, 156,0.85)','rgba(162, 68, 154,0.85)'],
                                  }
                              ]
                          },
                          options: {
                              responsive: true,
                              title: {
                                  display: true,
                                  fontsize: 200,
                                  text: "REALATÓRIO DE ERROS"  
                              }
                          }
                      });
                  </script>      
                  <script>
                      var ctx = document.getElementsByClassName("line-chart2");
                      // Type, Data e options
                      var chartGraph = new Chart(ctx, {
                          type: 'doughnut',
                          data: {
                              labels: ["Mat", "Port", "ciencias", "história","geografia"],
                              datasets: [
                                  {
                                      label: "NOTAS POR MATÉRIA",
                                      data: [<?php echo $certasMat; ?>, <?php echo $certasPort; ?>, <?php echo $certasCien; ?>, <?php echo $certasGeo; ?>, <?php echo $certasHist; ?>],
                                      borderWidth: 6,
                                      borderColor: ['rgba(0, 169, 141,0.85)','rgba(1, 147, 207,0.85)','rgba(1, 84, 132,0.85)','rgba(108, 68, 156,0.85)','rgba(162, 68, 154,0.85)'],
                                      backgroundColor: ['rgba(0, 169, 141,0.85)','rgba(1, 147, 207,0.85)','rgba(1, 84, 132,0.85)','rgba(108, 68, 156,0.85)','rgba(162, 68, 154,0.85)'],
                                  }
                              ]
                          },
                          options: {
                              responsive: true,
                              title: {
                                  display: true,
                                  fontsize: 200,
                                  text: "REALATÓRIO DE ACERTOS"  
                              }
                          }
                      });
                  </script>
              </div>
              <div class="col-sm-3">
              </div>
          </div>
          <div class="row content">
              <div class="col-sm-2"></div>
              <div class="col-sm-8 text-center">
                        <table class='table'>
                        <tr>
                        <td> data </td>
                        <td> nota </td>
                        </tr>
                        <tr> <td>15/04/2019</td> <td>70</td> </tr>
                        <tr> <td>15/04/2019</td> <td>70</td> </tr>
                        <tr> <td>15/04/2019</td> <td>70</td> </tr>
                        <tr> <td>15/04/2019</td> <td>70</td> </tr>
                  </table>
              </div>
              <div class="col-sm-2"></div>
          </div>
      </div>
    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS  -->
      
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      
  </body>
</html>