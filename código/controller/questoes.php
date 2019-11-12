<?php
	//session
	session_start();

	//includs
	require_once 'db_connect.php';

	require_once 'includs/header_principal.php';
	require_once 'includs/questoes.php';

	require_once 'questoes_view.php';

	echo "<script>
					function responder(id){
					    alert(id);

						$('#myForm input').on('change', function() {
						   alert($('input[name=resposta_".id."]:checked', '#myForm').val()); 
			     		});

			     		if(document.getElementById('gender_Male').checked) {
						  //Male radio button is checked
						}else if(document.getElementById('gender_Female').checked) {
						  //Female radio button is checked
						}


			     		
				   	};

				</script>";

	//document.getElementById('p').value = document.getElementById('resp').value;
	//var e = document.getElementById('');
	//var itemSelecionado = e.options[e.selectedIndex].text;

	//função em javascript


	