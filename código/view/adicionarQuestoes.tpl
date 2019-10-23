<div class="container-fluid text-center">    
  <div class="row content">

	<div class="col-sm-2 ">

	</div>

	<div class="col-sm-8 ">

		<form class="form" action="adicionarQuestoes.php" method="post" enctype="multipart/form-data">

			    <div>

			        <div class="panel panel-default">

			            <div class="panel-body">

			                <h3>Adicionar Questões</h3>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Enunciado 1: </label>

			                    <div class="col-md-9 col-xs-12">
			                            <input class="form-control" type="text" name="enunciado1" size="40" required/>
			                    </div>
			                    <br>
			                    <br>
			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Enunciado 2:</label>

			                    <div class="col-md-9 col-xs-12">
			                        <input class="form-control"  type="text" name="enunciado2" size="25" />
			                    </div>
			                    <br>
			                    <br>
			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Pedido da Questão</label>

			                    <div class="col-md-9 col-xs-12">
			                        <input class="form-control"  type="text" name="pedidoQuestao" size="25"  />
			                    </div>
			                    <br>
			                    <br>
			                </div>

			                
			                <hr />

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Alternativa A:</label>

			                    <div class="col-md-9 col-xs-12s">
			                        <input class="form-control" type="text" name="a" size="10" maxlength="20" required />
 
			                    </div>
			                    <br>
			                    <br>
			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Alternativa B:</label>

			                    <div class="col-md-9 col-xs-12s">
			                        <input class="form-control" type="text" name="b" size="10" maxlength="20" required/>
 
			                    </div>
			                    <br>
			                    <br>
			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Alternativa C:</label>

			                    <div class="col-md-9 col-xs-12s">
			                        <input class="form-control" type="text" name="c" size="10" maxlength="20" required/>
 
			                    </div>
			                    <br>
			                    <br>
			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Alternativa D:</label>

			                    <div class="col-md-9 col-xs-12s">
			                        <input class="form-control" type="text" name="d" size="10" maxlength="20" required/>
 
			                    </div>
			                    <br>
			                    <br>
			                </div>


			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Alternativa Correta:</label>


			                    <div class="col-md-9 col-xs-3">
			                        <select class="form-control" id="inputGroupSelect01" name="correta">
			                             <option value="a">A</option>
			                             <option value="b">B</option>
			                             <option value="c">C</option>
			                             <option value="d">D</option>
			                           </select>
			                    </div>
			                    <br>
			                    <br>
			                </div>


			                <hr />


			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Matéria</label>

			                    <div class="col-md-9 col-xs-12">
			                       <select class="form-control" id="inputGroupSelect02" name="materia">
		                             <option value="Física">Física</option>
		                             <option value="Geografia">Geografia</option>
		                             <option value="História">História</option>
		                             <option value="Português">Português</option>
		                             <option value="Matemática">Matemática</option>
		                             <option value="Química">Química</option>
		                             <option value="Biologia">Biologia</option>
		                           </select>
			                    </div>
			                    <br>
			                    <br>
			                </div>

			                <div class="form-group">
			                    <label class="col-md-3 col-xs-12 control-label">Ano:</label>

			                    <div class="col-md-9 col-xs-12">
			                        <select name="ano" class="form-control select">
			                            <option value="2012" >2012</option>
			                            <option value="2013" >2013</option>
			                            <option value="2014" >2014</option>
			                            <option value="2015" >2015</option>
			                            <option value="2016" >2016</option>
			                            <option value="2017" >2017</option>
			                            <option value="2018" >2018</option>
			                            <option value="2019" >2019</option>
			                        </select>
			                    </div>
			                    <br>
			                    <br>
			                </div>


			                <hr />

			                <label class="col-md-3 col-xs-12 control-label">Imagem da Questão (se houver):</label>
			                <div class="col-md-9 col-xs-12">
			                	<input type='file' name='foto1'>	

			                </div>

			                
					</div>
				</div>
			</div>
			<div class="form-group">
				 <div class="col-md-12 col-xs-12 text-center">

				    <button class="btn fundo3 btn-lg right" type="submit" name="adicionarQuestoes">
				      Adicionar</button>

				 </div>
			</div>
		</form>

	</div>


	<div class="col-sm-2 ">

	</div>

  </div>
</div>