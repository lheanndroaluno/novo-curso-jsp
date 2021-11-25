<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

	<div class="card center" style="position: absolute; top: 10%; left: 33%; right: 33%">
		<div class="card-header" style="text-align: center;">
			<h1>Bem vindo ao SGE</h1>
			<h6>Sistema de Gerenciamento de Estoque</h6>	
		</div>
		<div class="card-body" style="background-color: #A9A9A9">
			<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  				<symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    				<path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
  				</symbol>
			</svg>

			<div class="alert alert-danger d-flex align-items-center" role="alert">
				<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
				<!-- mensagem -->
				<h5>${msg}</h5>
			</div>


			<!-- formulário - enviados dados do formulário para a página receber-nome.jsp-->
			<form action="ServletLogin" method="post">
				<!--  -->
				<br> <input type="hidden"
					value="<%=request.getParameter("url")%>" name="url">

				<div class="mb-3">
					<label for="login" class="form-label">Login :: </label> <input
						id="login" name="login" class="form-control"
						placeholder="Informe seu login">
				</div>

				<div class="mb-3">
					<label for="senha" class="form-label">Senha :: </label> <input
						id="senha" type="password" name="senha" class="form-control"
						placeholder="Informe sua senha">
				</div>

				<div class="d-grid gap-2">
					<input class="btn btn-success btn-lg" type="submit" value="Entrar">
				</div>
			</form>

		</div>
	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>