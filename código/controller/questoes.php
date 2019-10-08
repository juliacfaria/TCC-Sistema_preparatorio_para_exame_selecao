<?php
	session_start();

	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/questoes.php';

	$ano = $_SESSION['ano'];
	$materia = $_SESSION['materia'];

	$sql = "SELECT * FROM questoes";

	$sim = 0;
	$res = mysqli_query($connect,$sql);
	if (mysqli_num_rows($res)>0){
		while($row = mysqli_fetch_array($res)){
			if ($row['materia']==$materia and $row['ano']==$ano){
					$sim = 1;
					echo "<div class='row'>

						    <div class='col-sm-2 '>

						    </div>
						    
						    <div class='col-md-8 col-sm-8 col-xs-12'>
						        
						                
						        <div>
						                    <div class='panel panel-danger' id='d_questao_".$row['id']."' tempo='0'>
						            
						                <div class=''>
						                
						                    <div class='panel-heading'>
						                                                    
						                        <div class='panel-title-box'>
						                                
						                                <h3>
						                                    
						                                    Questão " .$row['id']."                               
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
						                                                
						                                            <input type='radio' class='icheckbox' name='resposta_985215' value='2' onchange='responderMarcar('985215',this);'/>
						                 								a) ".$row['a']."&nbsp;   
						                                    </span>
						                                                
						                                                                                
						                                                                        
						                                            
						                                </label>
						                                                                                
						                                <label class='check btn-block letra' onclick=''>
						                                            
						                                    <span >
						                                                
						                                            <input type='radio' class='icheckbox' name='resposta_985215' value='2' onchange='responderMarcar('985215',this);'/>
						                                                b) ".$row['b']."&nbsp;          
						                                    </span>
						                                            
						                                </label>
						                                                                                

						                                <label class='check btn-block letra' onclick=''>
						                                            
						                                    <span>
						                                                
						                                            <input type='radio' class='icheckbox' name='resposta_985215' value='2' onchange='responderMarcar('985215',this);'/>
						                                                c) ".$row['c']."&nbsp;       
						                                    </span>
						                               
						                                </label>
						                                                                                

						                                <label class='check btn-block letra' onclick=''>
						                                            
						                                    <span>
						                                                
						                                            <input type='radio' class='icheckbox' name='resposta_985215' value='3' onchange='responderMarcar('985215',this);'>
						                                                d) ".$row['d']."&nbsp;
						                                                
						                                    </span>
						                                           
						                                </label>
						                                
						                                <button type='button' class='btn fundo3 btn-lg push-up-10' onclick='responder()'>
						                                Responder</button>

						                                <input type='text' id='p'>

						                                <input type='hidden' id='resp' value='".$row['correta']."'>

						                                <script>
						                                	function responder(){
						                                		document.getElementById('p').value = document.getElementById('resp').value;
						                                		
						                                	};

						                                </script>
						                                                            
						                        </div>

						                        <div class='resposta' id='d_resposta_985215'></div>
						                                                    
						                    </div>
						                    
						                    <div class='panel-footer print_no'>

						                        <div class='rodape'>
						                             
						                                                        
						                            <a class='btn btn-link xpull-right' onclick='questaoComentarios('985215','');'>
						                                    <i class='fa fa-comment'></i>
						                                    <span class='hidden-xs'>Comentários</span>
						                                                                            (5)
						                            </a>
						                                                            
						                        </div>
						                    
						                        <div class='videos d_videos' id='d_videos_985215' style='display: none;'></div>
						                        
						                        <div class='resumos d_resumos' id='d_resumos_985215' style='display: none;'></div>
						                        
						                        <div class='comentarios d_comentarios' id='d_comentarios_985215' style='display: none;'></div>
						                                        
						                    </div>
						                    
						                </div>
						            
						            </div>


						            <div class='col-md-3 col-sm-3 col-xs-12 d_questoes_lateral print_no'>
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
			    }
			        
		}
		if($sim!=1){
			echo "<div class='panel panel-default'>

				            <div class='panel-body text-center'>

				                <h3>Ainda não há questões</h3>
				                <form action='questoes.php' method='post'>
				                	<button name='filtrar' class='btn fundo3 btn-lg right'>Filtrar Questões</button>

				                </form>

				            </div>

				   </div>";
			if (isset($_POST['filtrar'])) {
				echo "<script>location.href='filtrarQuestoes.php';</script>";
			}
		}
	}else{
		echo "<div class='panel panel-default'>

			            <div class='panel-body text-center'>

			                <h3>Ainda não há questões</h3>
			                <form action='questoes.php' method='post'>
				                	<button name='filtrar' class='btn fundo3 btn-lg right'>Filtrar Questões</button>

				            </form>

			            </div>

			   </div>";
		if (isset($_POST['filtrar'])) {
			echo "<script>location.href='filtrarQuestoes.php';</script>";
		}

	}
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