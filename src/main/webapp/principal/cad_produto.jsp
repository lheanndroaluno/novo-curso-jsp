<%@page import="model.ModelLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt_BR">

<jsp:include page="head.jsp"></jsp:include>
	
<body>

	<!-- Pre-loader start -->
	<jsp:include page="theme-loader.jsp"></jsp:include>

	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<jsp:include page="navbar2.jsp"></jsp:include>
					<div class="pcoded-content">
						<!-- Page-header start -->
						<jsp:include page="page-header.jsp"></jsp:include>
						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<div class="row">
											<!-- conteudo das p?ginas -->

											<strong class="alert" id="mensagem">${mensagem}</strong>


											<div class="card"
												style="font-weight: bold; background-color: #D3D3D3">

												<div class="card-header"
													style="margin: 0.5rem; font-weight: bold; text-align: center; background-color: #F5F5F5; padding: 0.2rem">
													<h4 class="card-title">Cadastro de Produtos</h4>
												</div>

												<div class="card-body">

													<form class="row g-3" id="formProduct" method="post"
														action="" enctype="multipart/form-data">

														<input type="hidden" id="acao" name="acao" value="">

														<div class="col-md-3">
															<label for="id" class="form-label">C?digo</label> <input
																type="text" name="id" class="form-control" id="id"
																readonly="readonly" >
														</div>
														
														<div class="col-md-6"></div>

														

														<div class="d-grid gap-2 d-md-flex justify-content-md-end" style="margin-top: 2rem">

															<button type="button"
																class="btn btn-dark waves-effect waves-light btn-lg"
																data-bs-toggle="modal" href="#modalToggle" role="button">Pesquisar</button>

															<button type="button"
																class="btn btn-primary waves-effect waves-light btn-lg"
																onclick="limparFormulario();">Novo</button>

															<button type="submit"
																class="btn btn-danger waves-effect waves-light btn-lg"
																onclick="criarDeleteComAjax();">Excluir</button>

															<button type="submit" class="btn btn-success waves-effect waves-light btn-lg">Gravar</button>

														</div>

													</form>

												</div>
											</div>


											<div class="card" style="font-weight: bold; background-color: #D3D3D3">

												<div class="card-header"
													style="margin: 0.5rem; font-weight: bold; text-align: center; background-color: #F5F5F5; padding: 0.2rem">
													<h4 class="card-title">Produtos Cadastrados</h4>
												</div>

												<div class="card-body">
													<!-- tabela de dados usando jstl-->
													<div style="height: 20rem; overflow: scroll;">
														<table id="tabelaViewUser" class="table table-dark table-hover">
															<thead>
																<tr>
																	<th scope="col">C?digo</th>
																	<th scope="col">Nome</th>
																	<th scope="col">E-mail</th>
																	<th scope="col">Login</th>
																	<th scope="col">Ver</th>
																</tr>
															</thead>
															<tbody>
																<!-- torna a tabela din?mica ml-->
																<c:forEach items="" var="">
																	<tr>
																		<!-- linha -->
																		<td><c:out value=""></c:out></td>
																		<!-- coluna -->
																		<td><c:out value=""></c:out></td>
																		<!-- coluna -->
																		<td><c:out value=""></c:out></td>
																		<!-- coluna -->
																		<td><c:out value=""></c:out></td>
																		<!-- coluna -->
																		<td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>

											<!--  fim do conte?do das p?ginas -->
										</div>
									</div>
								</div>
								<!-- Page-body end -->
							</div>
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="javascriptfile.jsp"></jsp:include>

	<!-- Modal -->
	<div class="modal fade" id="modalToggle" aria-hidden="true"
		aria-labelledby="modalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #B0C4DE">
					<h5 class="modal-title" id="exampleModalToggleLabel">Pesquisa
						de Usu?rio</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- corpo da p?gina -->
					<div class="input-group mb-3">
						<input type="text" class="form-control"
							placeholder="Informe o nome para pesquisar"
							aria-label="Informe o nome para pesquisar"
							aria-describedby="button-addon2"
							style="font-weight: bold; font-size: 18px" id="nomeBusca">
						<button class="btn btn-success waves-effect waves-light btn-lg"
							type="button" id="button-addon2" onclick="buscarUsuario();">Buscar</button>
					</div>

					<!-- tabela de dados -->
					<div style="height: 20rem; overflow: scroll;">
						<table id="tabelaUsuarioResultados"
							class="table table-dark table-hover">
							<thead>
								<tr>
									<th scope="col">C?digo</th>
									<th scope="col">Nome</th>
									<th scope="col">Ver</th>
									<th scope="col">Visualizar</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
					<!-- corpo da p?gina -->
				</div>
				<div style="font-weight: bold; font-size: 15px; margin-left: 15px;">
					<!-- total de registros buscados -->
					<span id="totalResultados"></span>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Fechar</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->

	<!-- Modal 2 detalhes-->
	<div class="modal fade" id="modalToggle1" aria-hidden="true"
		aria-labelledby="modalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #B0C4DE">
					<h5 class="modal-title" id="exampleModalToggleLabel">Dados do
						Usu?rio</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- corpo da p?gina -->
					<div class="input-group mb-3">

						<span></span>


						<!-- corpo da p?gina -->
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal">Fechar</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal 2-->

	<script type="text/javascript">
	
		
	</script>

</body>
</html>