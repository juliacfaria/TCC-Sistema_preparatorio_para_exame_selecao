<div class="container-fluid text-center">    

      <div class="row content">
        <div class="col-sm-3 ">
        </div>
           <div class="col-sm-6 text-left"> 
              
              <form class="form-container col-6 col-sm-4 col-md-2" method="post" action="questionario_2.php">
                  
                 <div class="form-group form-row">
  
                      <div class="col-md-10 mb-2">
                            
                          <h3><strong>Questionário</strong></h3>
                          <h6>Ainda não realizou o exame de seleção da Cedaf? Responda a esse pequeno questionário para nos ajudar!</h6>
                          
                          
                        <label for="validationServer01">Com que frequência você usa nosso site?</label>
                          <div class="form-group input-group col-md-6 mb-3">
                          <select class="form-control" id="inputGroupSelect02" name="frequenciaSite" required>
                             <option selected value="sempre">Todos os dias</option>
                             <option value="quase">Uma vez na semana</option>
                             <option value="raramente">Raramente</option>
                          </select>
                         </div>  
                        
                        <label for="validationServer01">Esse site é útil para você?</label>
                           <div class="form-check">
                            <input class="form-check-input" type="radio" name=utilidade id="exampleRadios1" value="sim" checked>
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
                          
                          <label for="validationServer01">Deixe alguma sugestão, elogio ou reclamação:</label>
                          <div class="form-group">
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="sugestoes"></textarea>
                        </div>
                        
                          <button type="submit" class="btn fundo3 btn-block text-white font-weight-bold" name="enviar_form">Enviar formulário</button>
                </div>     
            </div>
 
              </form>
              
          </div>
          
           <div class="col-sm-6 ">

          </div>
      
        </div>
</div>