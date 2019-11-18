<?php
	//session
	session_start();

	//includs
	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/questoes.php';

	require_once 'questoes_view.php';

	
	echo "<script>
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

		  </script>";

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