<?php
	//session
	session_start();

	//includs
	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/questoes.php';

	require_once 'questoes_view.php';

	if(isset($_POST['resp'])){
		$array = array(1=>"um",2=>"dois",3=>"tres",4=>"quatro",5=>"cinco");
		echo "<br><b>GABARITO<b><br>";
		$ui = 1;
		while($ui<=$_SESSION['cont'] and $ui<=5){
			echo "resposta $ui:".$_SESSION[$array[$ui]];
			echo "<br>";
			$ui++;
		}

		echo "<!-- Modal -->
			<div class='modal fade' id='exampleModal' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>
			  <div class='modal-dialog' role='document'>
			    <div class='modal-content'>
			      <div class='modal-header'>
			        <h5 class='modal-title' id='exampleModalLabel'>Modal title</h5>
			        <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
			          <span aria-hidden='true'>&times;</span>
			        </button>
			      </div>
			      <div class='modal-body'>
			        .OII
			      </div>
			      <div class='modal-footer'>
			        <button type='button' class='btn btn-secondary' data-dismiss='modal'>OK</button>
			      </div>
			    </div>
			  </div>
			</div>";
	}


	
	/*echo "<script>
					myFunction(cont){
						var j = 1;
						while(j<cont){
							if (cont>5){
								break;
							}
							var radios = document.getElementsByName('j');
			                alert('Quantidade de itens do radio button: ' + radios.length);
			                for (var i = 0; i < radios.length; i++) {
			                    if (radios[i].checked) {
			                        alert('Escolheu: ' + radios[i].value);
			                    }
			                }
			                j++;
						}
						
					}

		  </script>";*/

	//document.getElementById('p').value = document.getElementById('resp').value;
	//var e = document.getElementById('');
	//var itemSelecionado = e.options[e.selectedIndex].text;

	//função em javascript


	/*function responder(id){
					    alert(id);

						$('#myForm input').on('change', function() {
						   alert($('input[name=resposta_".id."]:checked', '#myForm').val()); 
			     		});

			     		if(document.getElementById('gender_Male').checked) {
						  //Male radio button is checked
						}else if(document.getElementById('gender_Female').checked) {
						  //Female radio button is checked
						}


			     		
				   		};*/