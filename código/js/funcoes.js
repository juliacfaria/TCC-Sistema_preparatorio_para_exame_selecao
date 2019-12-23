<script type="text/javascript">
              /*window.onload = function(){
                  alert("f");
              }*/

              function bini(idQ,texto) {
                document.getElementById(idQ).innerHTML = texto;
                //document.getElementById(idQ).style = "color:blue;";
                //alert("oi");
              }

              function bini2(correta) {
                //alert(correta.innerHTML);
                //document.getElementById(correta).innerHTML = "bininho";
                /*var x = document.getElementById(correta).value;
                alert(x);*/
                //correta.value="texto";
                //correta.innerHTML = "te amo";
                correta.style = "color:green;display:inline;";
              }

              function bini3(correta,errada) {
                //alert(correta.innerHTML);
                //document.getElementById(correta).innerHTML = "bininho";
                /*var x = document.getElementById(correta).value;
                alert(x);*/
                //correta.value="texto";

                //mudando texto
                //correta.innerHTML = "te amo";
                //alert(correta.innerHTML);
                errada.style = "color:red;display:inline;";
                correta.style = "color:green;display:inline;";
              }
    </script>





    <script>
          

          

          function mudarCor(id, correta){
              
                var radios = document.getElementsByName('id');
                //alert('Quantidade de itens do radio button 1: ' + radios.length);
                
                for (var i = 0; i < radios.length; i++) {
                   if (radios[i]==correta) { 
                      
                      
                      return document.getElementByName.style.color = 'red';
                        //radios[i].style.color = "red"
                    }
                 }
                j++;
              }
              

          }

          function myFunction(cont){
              var questao = ['', 'um', 'dois', 'tres','quatro','cinco']; 
              var j = 1;
              while(j<=cont){
                if (j>5){
                  break;
                }
                var radios = document.getElementsByName(questao[j]);
                var list = [];
                //alert('Quantidade de itens do radio button 1: ' + radios.length);
                
                for (var i = 0; i < radios.length; i++) {
                   if (radios[i].checked) { 
                      list[i]=radios[i].value;                      
                      alert('Escolheu: ' + radios[i].value);
                      
                      // return document.getElementByName.style.color = 'red';
                      //radios[i].style.color = "red"
                    }
                 }
                j++;
              }
              funcao2(list);

          }

          function funcao2(list){
            alert("LISTA");
            for (i = 0; i < list.length; i++) {
                alert(list[i]);
            }
          }

    </script>