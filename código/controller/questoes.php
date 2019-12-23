<?php
	//session
	session_start();

	//includs

	require_once 'db_connect.php';

	require_once '../view/header_principal.tpl';
	echo "<script src='../js/funcoes.js'></script>";
	require_once '../view/questoes.tpl';

	require_once 'questoes_view.php';

	echo "<script src='../js/funcoes.js'></script>";

	