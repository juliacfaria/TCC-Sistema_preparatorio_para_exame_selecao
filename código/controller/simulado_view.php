<?php

	//devido ao tamanho do código de questões, criou-se o 'questoes_view.php', que destina-se a manter o código de implementação dinâmica das questões

	//variaveis selecionadas para filtro
	$ano = $_SESSION['ano'];

	//sql para realizar o select
	$sql = "SELECT * FROM questoes where ano='$ano'";
	
	$sim = 0;
	$res = mysqli_query($connect,$sql);
	echo "";
	//echo "VALOR:".$array[$verificador];
	if (mysqli_num_rows($res)>0){
		//divide em array


		while($row = mysqli_fetch_array($res)){
			//verifica se há questões do modelo especificado pelo estudante na hora de filtrar

			
					//indica que a consulta sql retornou valores
					$sim = 1;

					//incrementação em html dos conteúdos das questões
							echo "<form action='simulado.php' method='post'>
									<div class = 'container'>
									<h3>Simulado</h3>
						            <div class='panel panel-danger' tempo='0'>
						            
						                <div>
						                
									                    <div class='panel-heading'>
									                                                    
									                        <div class='panel-title-box'>
									                                
									                                <h3>
									                                    
									                                    Questão " .$row['idQuestoes']."                               
									                                </h3>
									                                
									                                   <span>
									                                    " .$row['materia']." " .$row['ano']."
									                                   </span>                                    
									                        </div>
									 
									                    </div>

						                    
									                    <div class='panel-body'>
									                                        
									                        <div>
									                            <p>".$row['enunciado']."</p>
									                            ";


									                            if (!empty($row['imagem'])) {

																	echo "<p><img height='260' src='../imagens/imagensQuestoes/".$row['imagem']."' width='402' /></p>";

									                         	}

									                         	if (!empty($row['enunciado2'])) {

																	echo "<p>".$row['enunciado2']."</p>";

									                         	}

																echo"

									                            <p>".$row['pedidoQuestao']."</p>
									                        </div>
									                    
									                    </div>
						                    			<h3 id=".$row['idQuestoes']." style='padding-left: 0.6em;'></h3>
									                    <div class='panel-body '>
									                        
									                        <div class='form form-group '>

									                                <label class='check btn-block letra '>
									                                            
									                                    <span class='' >
									                                                
									                                            <input type='radio' class='icheckbox ' name='id'  value='a'>
									                 								<p id='id_".$row['idQuestoes']."a' style='display:inline;''>a) ".$row['a']."&nbsp;  </p>
									                                    </span>
									                                                
									                                                                                
									                                                                        
									                                            
									                                </label>
									                                                                                
									                                <label class='check btn-block letra' >
									                                            
									                                    <span >
									                                                
									                                            <input type='radio' class='icheckbox' name='id' value='b'>
									                                                <p id='id_".$row['idQuestoes']."b' style='display:inline;''>b) ".$row['b']."&nbsp;  </p>         
									                                    </span>
									                                            
									                                </label>
									                                                                                

									                                <label class='check btn-block letra' >
									                                            
									                                    <span>
									                                                
									                                            <input type='radio' class='icheckbox' name='id'  value='c' />

									                                                <p id='id_".$row['idQuestoes']."c' style='display:inline;''>c) ".$row['c']."&nbsp;  </p>      
									                                    </span>
									                               
									                                </label>
									                                                                                

									                                <label class='check btn-block letra' >
									                                            
									                                    <span>
									                                                
									                                            <input type='radio' class='icheckbox' name='id' value='d' >
									                                                <p id='id_".$row['idQuestoes']."d' style='display:inline;''>d) ".$row['d']."&nbsp;  </p>
									                                                
									                                    </span>
									                                           
									                                </label>
									                                

									                                <input type='submit' class='btn fundo3 btn-lg push-up-10' name='resp' value='Responder' >

									                                <input type='hidden' name='correta' value='".$row['correta']."'>

									                                <input type='hidden' name='idQuestoes' value='".$row['idQuestoes']."'>";

									                                $_SESSION["'id_".$row['idQuestoes'].""]= $row['correta'];
									                          echo "                                  
									                        </div>
									                                                    
									                    </div>


						                    
										                    <div class='panel-footer print_no'>

										                        <div class='rodape'>
										                             
										                                                        
										                            <a class='btn btn-link xpull-right'>
										                                    <i class='fa fa-comment'></i>
										                                    <span class='hidden-xs'></span>
										                            </a>
										                                                            
										                        </div>
										                    
										                        <div class='videos d_videos' id='d_videos_985215' style='display: none;'></div>
										                        
										                        <div class='resumos d_resumos' id='d_resumos_985215' style='display: none;'></div>
										                        
										                        <div class='comentarios d_comentarios' id='d_comentarios_985215' style='display: none;'></div>
										                                        
										                    </div>
								                    
								                </div>
								            
								         </div>";

									echo "</div>
							                
										</div>";  

											//<input type='submit' class='btn fundo3 btn-lg push-up-10 data-toggle='modal' data-target='#exampleModal' value='Responder' name='resp'>
										echo " </div></form>";



									echo "
									</div>";
								

								/*if($test == 1){
									$variavel = 0;
									while($variavel == 0){
										if($variavel != 0){
											break;
										}
										//sleep(1);
										if($variavel != 0){
											break;
										}

									}

								}*/
				         
			    
			     
		}

		

		if(isset($_POST['resp'])){
			//echo "entrou";
			$id = $_POST['id'];
			//echo "$id";
			$certa = $_POST['correta'];
			$idQuestoes = $_POST['idQuestoes'];
			//echo "$idQuestoes";

			$correta = "id_".$idQuestoes."".$certa;
			$falsa = "id_".$idQuestoes."".$id;

			//echo "$correta<br>";
			//echo "$falsa";
			if($id==$certa){
				//echo "acertou";
/*
				if($materia == "Física" || $materia == "Biologia" || $materia == "Química"){
					$sql = "UPDATE `desempenho` SET `certasTotal`= certasTotal+1, certasCien = certasCien+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}elseif ($materia == "Português"){

					$sql = "UPDATE `desempenho` SET `certasTotal`= certasTotal+1, certasPort = certasPort+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);	

				}elseif($materia == "Matemática"){

					$sql = "UPDATE `desempenho` SET `certasTotal`= certasTotal+1, certasMat = certasMat+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}elseif ($materia == "Geografia"){

					$sql = "UPDATE `desempenho` SET `certasTotal`= certasTotal+1, certasGeo = certasGeo+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}else{

					$sql = "UPDATE `desempenho` SET `certasTotal`= certasTotal+1, certasHist = certasHist+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}*/

				echo "<script>
						bini($idQuestoes,'Acertou');
					</script>
				";

				echo "<script>
						bini2($correta);
					</script>
				";

			}else{
				//echo "errou";
/*
				if($materia == "Física" || $materia == "Biologia" || $materia == "Química"){
					$sql = "UPDATE `desempenho` SET `erradasTotal`= erradasTotal+1, erradasCien =erradasCien+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}elseif ($materia == "Português"){

					$sql = "UPDATE `desempenho` SET `erradasTotal`= erradasTotal+1, erradasPort =erradasPort+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);	

				}elseif($materia == "Matemática"){

					$sql = "UPDATE `desempenho` SET `erradasTotal`= erradasTotal+1, erradasMat = erradaMat+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}elseif ($materia == "Geografia"){

					$sql = "UPDATE `desempenho` SET `erradasTotal`= erradasTotal+1, erradasGeo = erradaGeo+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}else{

					$sql = "UPDATE `desempenho` SET `erradasTotal`= erradasTotal+1, erradasHist =erradasHist+1 WHERE usuarios_idUsuarios =".$_SESSION['id'];

					mysqli_query($connect,$sql);

				}
*/

				echo "<script>
						bini($idQuestoes,'Errou');
					</script>
				";

				echo "<script>
						bini3($correta,$falsa);
					</script>
				";
			}

		}

		//ou seja, caso não tenha nenhuma questão
		if($sim!=1){
			echo "<div class='col-md-8 col-sm-8 col-xs-12'>

					<div class='panel panel-default'>

				            <div class='panel-body text-center'>

				                <h3>Ainda não há questões</h3>
				                <form action='questoes.php' method='post'>
				                	<button name='filtrar' class='btn fundo3 btn-lg right'>Filtrar Questões</button>

				                </form>

				            </div>

				    </div>

				   
				  </div>";

			//direciona para a parte de filtrar questões
			if (isset($_POST['filtrar'])) {
				echo "<script>location.href='filtrarQuestoes.php';</script>";
			}
		}

	//caso ainda nao tenha questões cadastradas
	}else{
		echo "<div class='col-md-8 col-sm-8 col-xs-12'>
				<div class='panel panel-default'>

			            <div class='panel-body text-center'>

			                <h3>Ainda não há questões cadastradas</h3>
			                <form action='questoes.php' method='post'>
				                	<button name='filtrar' class='btn fundo3 btn-lg right'>Filtrar Questões</button>

				            </form>

			            </div>

			   </div>
			 </div>";
		if (isset($_POST['filtrar'])) {
			echo "<script>location.href='filtrarQuestoes.php';</script>";
		}

	}

	echo "	<div class='col-sm-2 '>

    		</div>
    	</div>";
			   /*  echo " <div class='row print_no'>
			            
			            <div class='paginacao'>
			                    <ul class='pagination pagination-md'>
					            <li>
			                <span>
			            		<select onchange='paginacao(this.value);'>
			            		<option value='1' selected>1</option>
			                    </select>
			                </span>
			            </li>
			                        <li>
			    			<a onclick='paginacao(2);'>
			    			Próximo
			                </a>
			            </li>
								
					</ul>
					            </div>
			            
			        </div>
			    
			    </div>
			    
			   echo" <div class='col-md-3 col-sm-3 col-xs-12 d_questoes_lateral print_no'>
			    <div>    
			        
			                
			        
			        
			    </div>
			    </div>
			    
			</div>



			    





			<!--<a id='a_saidas' class='lytediv lyteforce' href='#d_saidas'></a>

			<div id='d_saidas' class='d_saidas' style='display: none;'>
			    
			    <h2>Saídas de Tela</h2>
			    
			    <div class='panel panel-default'>
			        
			        <div class='panel-body'>
			                
			            <div class='col-md-3 col-sm-4 col-xs-12'>
			            
			                <div class='tile tile-warning'>
			                    <span>1</span>/3
			                    <p>Saídas de Tela</p>
			                </div>
			            
			            </div> 
			        </div> 
			        
			        
			        
			    </div>
			    
			</div>  -->              </div>
			                
			            </div>     
			            
			        </div>
			        


			    
			<div class='d_loading' title='Carregando...' style='display: none;'>
			        <div id='check' class='after'></div>
			        <div id='square' class='after'></div>
			    </div>

			<!-- Facebook Pixel Code -->
			";
*/
/*

			<!--<a id='a_saidas' class='lytediv lyteforce' href='#d_saidas'></a>

						<div id='d_saidas' class='d_saidas' style='display: none;'>
						    
						    <h2>Saídas de Tela</h2>
						    
						    <div class='panel panel-default'>
						        
						        <div class='panel-body'>
						                
						            <div class='col-md-3 col-sm-4 col-xs-12'>
						            
						                <div class='tile tile-warning'>
						                    <span>1</span>/3
						                    <p>Saídas de Tela</p>
						                </div>
						            
						            </div> 
						        </div> 
						        
						        
						        
						    </div>
						    
						</div>  -->   





						    
						<div class='d_loading' title='Carregando...' style='display: none;'>
						        <div id='check' class='after'></div>
						        <div id='square' class='after'></div>
						    </div>

						<!-- Facebook Pixel Code -->
*/
						           