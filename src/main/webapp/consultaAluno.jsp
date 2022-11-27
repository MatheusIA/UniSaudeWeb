<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.Aluno"%>
<%@page import="UniSaudeWeb.dao.Dao"%>
<%@page import="UniSaudeWeb.dao.AlunoDao"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	
<title>Aluno</title>
</head>
<body>

	<%
	AlunoDao dao = new AlunoDao();
	List<Aluno> alunos = dao.findAll(Aluno.class);	
	%> 

<div class="container">
	<a class="btn btn-primary" href="formAluno.jsp">Novo Aluno</a>
	
	
	<table class="table table-bordered">
		
		<thead>
			<tr>
				<th>Matricula</th>
				<th>Nome</th>
				<th>Nivel Aluno</th>
				<th></th>	
				<th></th>		
			</tr>
		</thead>
		<tbody>
		
		<%
		for(Aluno aluno: alunos){ 
		%> 
		
			<tr>
				<td><%=aluno.getId()%></td> 
				
				<td><%=aluno.getNome()%></td>  
				
				<td><%= aluno.getEmail()%>
				
				<td><%=aluno.getNivelaluno() %></td>
				
				<td>
							
					<a class="btn btn-secondary btn-sm" 
						href="editAluno.jsp?id=<%=aluno.getId()%>">Editar</a>	
				</td>
					
				<td>
					<a class="btn btn-secondary btn-sm"
						href="${pageContext.request.contextPath}/controllerAluno?id=<%=aluno.getId()%>">Excluir</a>
				</td>
			</tr>
			<%
				} 
			%> 
		</tbody>
	</table>
</body>
</html>