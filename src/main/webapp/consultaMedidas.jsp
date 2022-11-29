<%@page import="UniSaudeWeb.dao.AlunoDao"%>
<%@page import="UniSaudeWeb.model.Aluno"%>
<%@page import="UniSaudeWeb.model.Pessoa"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.MedidasCorporais"%>
<%@page import="UniSaudeWeb.dao.MedidasCorporaisDao"%>
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
	
<title>Consulta Medidas</title>
</head>
<body>

<%
	MedidasCorporaisDao dao = new MedidasCorporaisDao();
	List<MedidasCorporais> medidas = dao.findAll(MedidasCorporais.class);
	//MedidasCorporais medida = new MedidasCorporais();
	
	AlunoDao daoAluno = new AlunoDao();
	List<Aluno> alunos = daoAluno.findAll(Aluno.class);
	//Aluno aluno = new Aluno();
%>

<div class="container">
	<a class="btn btn-primary" href="formMedidas.jsp">Novas Medidas</a>
	
	
	<table class="table table-bordered">
		
		<thead>
			<tr>
				<th>ID</th>
				<th>Abdomen</th>
				<th>Altura</th>
				<th>Braco</th>
				<th>Perna</th>
				<th>Peso</th>
				<th></th>	
				<th></th>		
			</tr>
		</thead>
		<tbody>
		
		<%
		
		
		for(MedidasCorporais medida: medidas){ 
			
		%> 
		
			<tr>
				<td><%= medida.getId() %></td> 
				
				<td><%= medida.getAbdomen()%></td>  
				
				<td><%= medida.getAltura()%></td>
				<td><%= medida.getBraco()%></td>
				<td><%= medida.getPerna()%></td>
				<td><%= medida.getPeso()%></td>
								
				<td>
	
					<a 
						class="btn btn-secondary btn-sm" 
						href="editMedidas.jsp?id=<%= medida.getId() %>">Editar</a>	
					
				</td>

				<td>
					<a class="btn btn-secondary btn-sm"
						href="${pageContext.request.contextPath}/controllerMedidas?id=<%= medida.getId() %>">Excluir</a>
				</td>
			</tr>
			<%
				} 
		
			%> 
		</tbody>
	</table>
	</div>
</body>
</html>