<div class="container-fluid text-center">    

      <div class="row content">
        <div class="col-sm-2 ">
        </div>


          <div class="col-sm-8 text-left"> 
              
              <form method="post" action="../controller/cadastro.php">
                            
                  <div class="form-group form-row">
  
                      <div class="col-md-4 mb-3">
          
                      
                          <label for="validationServer01">Nome</label>
          
                          
                          <input type="text" class="form-control is-valid" id="validationServer01" placeholder="Nome" required name="nome">
          
        
                      </div>
                  </div>
      
                  <div class="form-group form-row">
        
                      <div class="col-md-4 mb-3">
          
                          <label for="validationServer03">Cidade</label>
          
                          <input type="text" class="form-control is-invalid" id="validationServer03" placeholder="Cidade" required name="cidade">
          
        
                      </div>
        
                      <div class="col-md-3 mb-3 form-group form-row">
          
                          <div class="form-group input-group col-md-4 mb-3">
                           <div class="input-group-prepend">
                             <label class="input-group-text" for="inputGroupSelect01">Estado</label>
                           </div>
                           <select class="form-control" id="inputGroupSelect01">
                             <option selected value="mg">MG</option>
                             <option value="sp">SP</option>
                             <option value="rj">RJ</option>
                             <option value="es">ES</option>
                           </select>
                         </div>
        
                      </div>

                      <div class="col-md-4 mb-3 form-group form-row">
          
                          <label for="validationServer05">CPF</label>
         
                          <input type="text" class="form-control is-invalid" id="validationServer05" placeholder="CPF" required name="cpf">
          
        
                      </div>

                      <div class="col-md-4 mb-3 form-group form-row">
          
                          <label for="validationServer05">Telefone</label>
         
                          <input type="text" class="form-control is-invalid" id="validationServer05" placeholder="Telefone" required name="telefone">
        
                      </div>
                      <br>
                      <br>

                      <div class="col-md-4 mb-3 form-group">
          
                          <div class="form-group input-group col-md-6 mb-3">
                           <div class="input-group-prepend">
                             <label class="input-group-text" for="inputGroupSelect01">Curso de interesse</label>
                           </div>
                           <select class="form-control" id="inputGroupSelect02">
                             <option selected value="informatica">Informática</option>
                             <option value="agropecuaria">agropecuária</option>
                             <option value="eletronica">eletrônica</option>
                             <option value="eletrotécnica">eletrotécnica</option>
                             <option value="hospedagem">hospedagem</option>
                             <option value="alimentos">alimentos</option>
                           </select>
                         </div>

                      </div>
                      <br>
                      <br>

                    <div class="form-group">
                          <label for="exampleInputEmail1">Endereço de email:</label>
                         
                          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email" name="email">
                          
                          <small id="emailHelp" class="form-text text-muted">O email não será compartilhado com ninguém.</small>
                          
                      </div>

                      
                      <div class="form-group">
                    
                          <label for="exampleInputPassword1">Senha</label>
                          
                          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="senha" name="senha">
                          
                    </div>
      
                  </div>
      
                  <div class="form-group">
        
                     <!-- <div class="form-check">
         
                          <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
          
                          <label class="form-check-label" for="invalidCheck3">
          
                              Concordo com os termos e condições
          
                          </label>
          
                          <div class="invalid-feedback">

                              Você deve concordar, antes de continuar.

                          </div>
        
                      </div>  -->
                              <button type="submit" class="btn fundo3 btn-block text-white font-weight-bold" name="entrar">Cadastrar</button>
                  </div>

              </form>
       
          </div>


          <div class="col-sm-2 ">

          </div>
      
        </div>
    </div>