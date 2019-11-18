<?php

	//devido ao tamanho do código de questões, criou-se o 'questoes_view.php', que destina-se a manter o código de implementação dinâmica das questões

	//variaveis selecionadas para filtro
	$ano = $_SESSION['ano'];
	$materia = $_SESSION['materia'];

	//sql para realizar o select
	$sql = "SELECT * FROM questoes";
	$sql2 = "SELECT * FROM questoes";

	//variavel para identificar se a consulta da sql teve resultados
	$sim = 0;

	//consulta sql
	$res = mysqli_query($connect,$sql);
	$res2 = mysqli_query($connect,$sql2);

	$cont = 0;


	//contando a qtd de elementos do array
	if (mysqli_num_rows($res2)>0){
		while($ro = mysqli_fetch_array($res2)){
			if ($ro['materia']==$materia and $ro['ano']==$ano){
				$cont++;
			}
			
		}
	}

	$array = array(1=>"um",2=>"dois",3=>"tres",4=>"quatro",5=>"cinco");
	

	//adicionando o conteúdo das questões
	$verificador = 1;
	echo "VALOR:".$array[$verificador];
	if (mysqli_num_rows($res)>0){
		//divide em array

		echo "<div class='col-md-8 col-sm-8 col-xs-12'>
						    	<form method='post' action='' id='myForm' onsubmit='myFunction($cont)'>
						        ";


		echo "CONT: $cont";
		while($row = mysqli_fetch_array($res)){
			//verifica se há questões do modelo especificado pelo estudante na hora de filtrar

			

			if ($row['materia']==$materia and $row['ano']==$ano){
					//indica que a consulta sql retornou valores
					$sim = 1;

					if($verificador<=5){
					//incrementação em html dos conteúdos das questões
							echo "
						                
						        <div>
						            <div class='panel panel-danger' id='d_questao_".$row['idQuestoes']."' tempo='0'>
						            
						                <div class=''>
						                
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
						                    
									                    <div class='panel-body'>
									                        
									                        <div class='form form-group'>

									                                <label class='check btn-block letra ' onclick=''>
									                                            
									                                    <span>
									                                                
									                                            <input type='radio' class='icheckbox' name='".$array[$verificador]."' value='a' onchange='responderMarcar('985215',this);'/>
									                 								a) ".$row['a']."&nbsp;   
									                                    </span>
									                                                
									                                                                                
									                                                                        
									                                            
									                                </label>
									                                                                                
									                                <label class='check btn-block letra' onclick=''>
									                                            
									                                    <span >
									                                                
									                                            <input type='radio' class='icheckbox' name='r".$array[$verificador]."' value='b' onchange='responderMarcar('985215',this);'/>
									                                                b) ".$row['b']."&nbsp;          
									                                    </span>
									                                            
									                                </label>
									                                                                                

									                                <label class='check btn-block letra' onclick=''>
									                                            
									                                    <span>
									                                                
									                                            <input type='radio' class='icheckbox' name='r".$array[$verificador]."' value='c' onchange='responderMarcar('985215',this);'/>
									                                                c) ".$row['c']."&nbsp;       
									                                    </span>
									                               
									                                </label>
									                                                                                

									                                <label class='check btn-block letra' onclick=''>
									                                            
									                                    <span>
									                                                
									                                            <input type='radio' class='icheckbox' name='r".$array[$verificador]."' value='d' onchange='responderMarcar('985215',this);'>
									                                                d) ".$row['d']."&nbsp;
									                                                
									                                    </span>
									                                           
									                                </label>
									                                

									                                <!--<button type='button' class='btn fundo3 btn-lg push-up-10' onclick='responder(".$row['idQuestoes'].")'>
									                                Responder</button>-->

									                                <input type='hidden' id='resp' value='".$row['correta']."'>";

									                                $_SESSION["$array[$verificador]"]= $row['correta'];
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
								            
								         </div>

								</div>";

								$test = 0;
								if($verificador==5 or $verificador==$cont){
									echo "</div>
							                
										</div>    
											<input type='submit' class='btn fundo3 btn-lg push-up-10' value='Responder'>
										 </form>";

									echo "
									</div>";
									$test = 1;
								}

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
				          
						   $verificador++;



						}

				

				
			    
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
						           