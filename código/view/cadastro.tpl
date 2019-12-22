<div class="container-fluid text-center">    

    <div class="row content">

        <div class="col-sm-2 ">
        </div>


        <div class="col-sm-8 text-left"> 
          <br>
          <div class="panel panel-default">
              <div class="panel-body">
              
                <form method="post" action="cadastro.php">

                  <h3 class="text-center">Cadastro</h3>
                            
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


                      <div class="col-md-4 mb-3">
          
                          <label for="validationServer03">Estado</label>
                          <select class="form-control" id="inputGroupSelect01" name="estado" required>
                              <option value="ac">Acre</option> 
                              <option value="al">Alagoas</option> 
                              <option value="am">Amazonas</option> 
                              <option value="ap">Amapá</option> 
                              <option value="ba">Bahia</option> 
                              <option value="ce">Ceará</option> 
                              <option value="df">Distrito Federal</option> 
                              <option value="es">Espírito Santo</option> 
                              <option value="go">Goiás</option> 
                              <option value="ma">Maranhão</option> 
                              <option value="mt">Mato Grosso</option> 
                              <option value="ms">Mato Grosso do Sul</option> 
                              <option value="mg">Minas Gerais</option> 
                              <option value="pa">Pará</option> 
                              <option value="pb">Paraíba</option> 
                              <option value="pr">Paraná</option> 
                              <option value="pe">Pernambuco</option> 
                              <option value="pi">Piauí</option> 
                              <option value="rj">Rio de Janeiro</option> 
                              <option value="rn">Rio Grande do Norte</option> 
                              <option value="ro">Rondônia</option> 
                              <option value="rs">Rio Grande do Sul</option> 
                              <option value="rr">Roraima</option> 
                              <option value="sc">Santa Catarina</option> 
                              <option value="se">Sergipe</option> 
                              <option value="sp">São Paulo</option> 
                              <option value="to">Tocantins</option> 
                          </select>
                          <br>

                      </div>
                      

                      <div class="col-md-4 mb-3 form-group form-row">
          
                          <label for="validationServer05">CPF</label>
                          <input type="text" class="form-control is-invalid" id="validationServer05" placeholder="CPF" required name="cpf">
        
                      </div>

                      <div class="col-md-4 mb-3 form-group form-row">
          
                          <label for="validationServer05">Telefone</label>
                          <input type="tel" class="form-control is-invalid" id="validationServer05" placeholder="Telefone" required name="telefone">
        
                      </div>

                      <div class="col-md-4 mb-3 form-group form-row">
          
                          <label for="validationServer05">Data de Nascimento</label>
                          <input type="date" class="form-control is-invalid" id="validationServer05" placeholder="Data de nascimento" required name="data">
        
                      </div>

                      <br>
                      <br>

                       <div class="col-md-4 mb-3">
          
                          <label for="validationServer03">Curso de interesse</label>
                          <select class="form-control" id="inputGroupSelect02" name="curso" required>
                             <option selected value="informatica">Informática</option>
                             <option value="agropecuaria">Agropecuária</option>
                             <option value="eletronica">Eletrônica</option>
                             <option value="eletrotecnica">Eletrotécnica</option>
                             <option value="hospedagem">Hospedagem</option>
                             <option value="alimentos">Alimentos</option>
                          </select>
                          <br>

                      </div>

                      <div class="col-md-4 mb-3">
          
                          <label for="validationServer03">Gênero</label>
                          <select class="form-control" id="inputGroupSelect02" name="genero" required>
                             <option selected value="F">Feminino</option>
                             <option value="M">Masculino</option>
                          </select>
                          <br>

                      </div>
              
                    <hr>

                    <div class="form-group col-md-12 mb-3">

                          <label for="exampleInputEmail1">Endereço de email</label>                         
                          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email" name="email" required>                          
                          <small id="emailHelp" class="form-text text-muted">O email não será compartilhado com ninguém.</small>
                          
                    </div>

                      
                    <div class="form-group col-md-12   mb-3">
                    
                          <label for="exampleInputPassword1">Senha</label>
                          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="senha" name="senha" required>
                          
                    </div>
      
                  </div>
      
                  <div class="form-group col-md-12   mb-3">
        
                          <button type="submit" class="btn fundo3 btn-block text-white font-weight-bold " name="cadastrar">Cadastrar</button>

                  </div>

                </form>
              </div>
          </div>
        </div>


        <div class="col-sm-2 ">
        </div>
      
    </div>
</div>

