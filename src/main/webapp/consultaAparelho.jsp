<%@page import="org.apache.tomcat.util.net.AprEndpoint"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.Aparelhos"%>
<%@page import="UniSaudeWeb.dao.AparelhosDao"%>
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
	
<title>Aparelhos</title>
</head>
<body>

	<%
	AparelhosDao dao = new AparelhosDao();
	List<Aparelhos> aparelhos = dao.findAll(Aparelhos.class);	
	%> 

<div class="container">
	<a class="btn btn-primary" href="formAparelho.jsp">Novo Aparelho</a>
	
	
	<table class="table table-bordered">
		
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome Aparelho</th>
				<th>Função Aparelho</th>
				<th></th>	
				<th></th>		
			</tr>
		</thead>
		<tbody>
		
		<%
		for(Aparelhos aparelho: aparelhos){ 
		%> 
		
			<tr>
				<td><%=aparelho.getId()%></td> 
				
				<td><%=aparelho.getNomeAparelho()%></td>  
				
				<td><%=aparelho.getFuncaoAparelho() %></td>
				
				<td>
							
					<a class="btn btn-secondary btn-sm" 
						href="editAparelho.jsp?id=<%=aparelho.getId()%>">Editar</a>	
					
				</td>
					
				<td>
					<a class="btn btn-secondary btn-sm"
						href="${pageContext.request.contextPath}/controllerAparelhos?id=<%=aparelho.getId()%>">Excluir</a>
				</td>
			</tr>
			<%
				} 
			%> 
		</tbody>
	</table>
</body>
</html>