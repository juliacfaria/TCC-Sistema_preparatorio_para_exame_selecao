<div class="container-fluid text-center">    
  <div class="row content">

    <div class="col-sm-2 ">

    </div>

	<div class="col-sm-8 ">
            <div class="row page-content-wrap">
			<form class="form form-horizontal" action="perfil.php" method="post">

			    <div class="col-sm-8 col-xs-12">

			        <div class="panel panel-default">

			            <div class="panel-body">

			                <h3>Perfil</h3>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Nome</label>

			                    <div class="col-md-9 col-xs-12">
			                            <input class="form-control" type="text" name="nome" id="nome2"  size="40" />
			                    </div>

			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">E-mail</label>

			                    <div class="col-md-9 col-xs-12">
			                        <input class="form-control"  type="text" name="email" size="25" />
			                    </div>

			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Pontuação</label>

			                    <div class="col-md-9 col-xs-12">
			                        <input class="form-control"  type="text" name="pontuacao" size="25" disabled />
			                    </div>

			                </div>

			                
			                <hr />

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">CPF</label>

			                    <div class="col-md-9 col-xs-12s">
			                        <input class="form-control" type="text" name="cpf" size="10" maxlength="20" />

			                        
			                    </div>

			                </div>


			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Cidade</label>

			                    <div class="col-md-7 col-xs-9">
			                        <input class="form-control" type="text" name="cidade" size="30" maxlength="100" />
			                    </div>

			                    <div class="col-md-2 col-xs-3">
			                        <select class="form-control" id="inputGroupSelect01" name="estado" >
			                             <option value="MG">MG</option>
			                             <option value="SP">SP</option>
			                             <option value="RJ">RJ</option>
			                             <option value="ES">ES</option>
			                           </select>
			                    </div>

			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Celular / Telefone</label>

			                    <div class="col-md-9 col-xs-12">
			                        <input class="form-control c_fone" type="text" name="telefone" size="14" />
			                    </div>

			                </div>

			                <hr />

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Data Nascimento</label>

			                    <div class="col-md-9 col-xs-12">
			                        <input class="form-control c_data" type="date" name="data" size="12" />
			                    </div>

			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Curso de Interesse</label>

			                    <div class="col-md-9 col-xs-12">
			                       <select class="form-control" id="inputGroupSelect02" name="curso">
		                             <option value="informatica">Informática</option>
		                             <option value="agropecuaria">Agropecuária</option>
		                             <option value="eletronica">Eletrônica</option>
		                             <option value="eletrotecnica">Eletrotécnica</option>
		                             <option value="hospedagem">Hospedagem</option>
		                             <option value="alimentos">Alimentos</option>
		                           </select>
			                    </div>

			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Seu sexo</label>

			                    <div class="col-md-9 col-xs-12">
			                        <select name="sexo" class="form-control select">
			                            <option value="F" >Feminino</option>
			                            <option value="M" >Masculino</option>
			                        </select>
			                    </div>

			                </div>


			                <hr />

			                
			                    <h3>Alterar Senha</h3>

			                    <div class="form-group">
			                        <label class="col-md-3 col-xs-12 control-label">Senha</label>

			                        <div class="col-md-9 col-xs-12">
			                            <input class="form-control" type="password" name="senha" value="" size="10" maxlength="50" />
			                            <small>* Esse campo é utilizado <b>APENAS</b> para a alteração da senha</small>
			                        </div>

			                    </div>
			                                
			            </div>

			        </div>

			    </div>

			    <div class="col-sm-4 col-xs-12">

			        <div class="panel panel-default panel-body">

			            <h3>Foto</h3>

			            <div class="form-group">

			                <div class="col-md-12">

			                    <img src="../imagens/tetris.jpg" class="img-circle" style="width: 100px;" />

			                    <a class="btn btn-info" href="#">
			                        Mudar Foto</a>


			                </div>

			            </div>

			        </div>


			        

			            
			    </div>
			    <div class="form-group">
			        <div class="col-md-12 col-xs-12 text-center">

			            <button class="btn fundo3 btn-lg" type="submit" name="atualizar">
			                Atualizar Dados</button>
			            <button class="btn fundo3 btn-lg" type="submit" name="excluir"  data-toggle="modal" data-target="#excluirModal">
			                Excluir Conta</button>

			        </div>
			    </div>

			</form>
		</div>
	</div>

	<div class="col-sm-2 ">

	</div>

   </div>
</div>

			  

