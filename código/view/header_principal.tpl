<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Pré-Cedaf</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="../css/estilo_principal.css">
  <link rel="stylesheet" type="text/css" href="../css/estilo_perfil.css">
  <link rel="stylesheet" type="text/css" href="../css/estilo_questao.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  
</head>
<body>

<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>


      <a class="navbar-brand" href="principal.php"><img src="../imagens/logo.PNG" class="img-fluid"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">

        <li>
          <a href="#" class="nav-link dropdown " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="glyphicon glyphicon-pencil">&ensp;</span>Testar Conhecimento</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item list-group-item list-group-item-danger" href="filtrarQuestoes.php">Questões<br></a>
                      <a class="dropdown-item list-group-item list-group-item-danger" href="#">Simulado</a>
            </div>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-signal">&ensp;</span>Desempenho</a></li>
        <li><a href="ranking.php"><span class="glyphicon glyphicon-list-alt">&ensp;</span>Ranking</a></li>
        <li><a href="conteudoProgramatico.php"><span class="glyphicon glyphicon-book">&ensp;</span>Conteúdo Programático</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-pushpin">&ensp;</span>Materiais Recomendados</a></li>
        <li><a href="feedback.php"><span class="glyphicon glyphicon-comment">&ensp;</span>Feedback</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-calendar">&ensp;</span>Plano de Estudos</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">

        <li>
          <a href="#" class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="glyphicon glyphicon-user">&ensp;</span>Dados pessoais</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
             <a class="dropdown-item list-group-item list-group-item-danger" href="perfil.php">Meu perfil<br></a>
             <a class="dropdown-item list-group-item list-group-item-danger" href="adicionarQuestoes.php" disabled>Adicionar questões</a>
             <a class="dropdown-item list-group-item list-group-item-danger" href="logout.php">Sair</a>
          </div>
        </li>


      </ul>
    </div>
  </div>
</nav>