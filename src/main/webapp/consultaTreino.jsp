<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.Treino"%>
<%@page import="UniSaudeWeb.dao.TreinoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	
<title>Consulta Treino</title>
</head>
<body>

<%
	TreinoDao dao = new TreinoDao();
	List<Treino> treinos = dao.findAll(Treino.class);	
%> 

<div class="container">
	<a class="btn btn-primary" href="formTreino.jsp">Novo Treino</a>
	
	
	<table class="table table-bordered">
		
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome Exercicio</th>
				<th>Tipo Treino</th>
				<th></th>	
				<th></th>		
			</tr>
		</thead>
		<tbody>
		
		<%
		for(Treino treino: treinos){ 
		%> 
		
			<tr>
				<td><%=treino.getId() %></td> 
				
				<td><%=treino.getNomeExecicio()%></td>  
				
				<td><%=treino.getTipoTreino()%></td>
				
				<td>
							
					<a class="btn btn-secondary btn-sm" 
						href="editTreino.jsp?id=<%=treino.getId() %>">Editar</a>
						<a class="btn btn-secondary btn-sm" 
						href="formAparelho.jsp?id=<%=treino.getId() %>">Aparelhos</a>		
					
				</td>
					
				<td>
					<a class="btn btn-secondary btn-sm"
						href="${pageContext.request.contextPath}/controllerTreino?id=<%=treino.getId()%>">Excluir</a>
				</td>
			</tr>
			<%
				} 
			%> 
		</tbody>
	</table>

</body>
</html>