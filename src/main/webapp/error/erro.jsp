<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt_BR">

<jsp:include page="../principal/head.jsp"></jsp:include>
<body>

	<div class="card text-center">
		<div class="card-header text-white bg-primary"><h1>Ops!!</h1></div>
		<div class="card-body">
			<h3 class="card-title">Mensagem de Erro!</h3>
				<h4>Entre em contato com o suporte do sistema.</h4>
				<h4 class="card-text">(99) 9.9999-9999 | (99) 9.8888-8888</h4>
				<h4 class="card-text">Suporte 24 horas por dia e 7 dias por semana.</h4>
			<a href="../principal/principal.jsp" class="btn btn-primary">P�gina Inicial</a>
		</div>
		<div class="card-footer text-muted">
			<%
			out.println(request.getAttribute("msg"));
			%>
		</div>
	</div>
	
	
</body>
</html>