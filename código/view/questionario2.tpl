<div class="container-fluid text-center">    

    <div class="col-sm-4 ">
    </div>


    <div class="col-sm-4 text-left"> 
      <br>

      <form class="panel panel-default" method="post" action="questionario2.php">
          <div class="text-center">
              <h3>Questionário</h3>
               <h4>Ainda não realizou o exame de seleção da Cedaf? Responda a esse pequeno questionário para nos ajudar!</h4>
          </div>
            
          <div class="panel-body">

              <div class="form-group ">
                  <label for="validationServer01">Com que frequência você usa nosso site?</label>
                          
                  <select class="form-control" id="inputGroupSelect02" name="frequenciaSite" required>
                      <option selected value="sempre">Todos os dias</option>
                      <option value="quase">Uma vez na semana</option>
                      <option value="raramente">Raramente</option>
                  </select>

              </div>

              <div class="form-group">
                  <label for="validationServer01">Esse site é útil para você?</label>

                  <div class="form-check">
                      <input class="form-check-input" type="radio" name="utilidade" id="exampleRadios1" value="sim" checked>
                      <label class="form-check-label" for="exampleRadios1">
                          Sim
                      </label>
                  </div>
                          
                  <div class="form-check">
                      <input class="form-check-input" type="radio" name="utilidade" id="exampleRadios2" value="nao">
                      <label class="form-check-label" for="exampleRadios2">
                          Não
                      </label>
                  </div>
                      
              </div>

              <div class="form-group">
                  <label for="validationServer01">Você indicaria esse site para algum amigo?</label>

                  <div class="form-check">
                      <input class="form-check-input" type="radio" name=indicacao id="exampleRadios1" value="sim" checked>
                      <label class="form-check-label" for="exampleRadios1">
                          Sim
                      </label>
                  </div>

                  <div class="form-check">
                      <input class="form-check-input" type="radio" name="indicacao" id="exampleRadios2" value="nao">
                      <label class="form-check-label" for="exampleRadios2">
                          Não
                      </label>
                  </div>

              </div>

                <div class="form-group">
                    <label for="validationServer01">Deixe alguma sugestão, elogio ou reclamação:</label>

                    <div class="form-group">
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="sugestoes"></textarea>
                    </div> 

                </div>

                 <button type="submit" class="btn fundo3 btn-block text-white font-weight-bold" name="enviar_formulario">Enviar formulário</button>

          </div> 
          
      </form>

    </div>

    <div class="col-sm-4 ">
    </div>

</div>



