<%@page import="UniSaudeWeb.model.Aparelhos"%>
<%@page import="UniSaudeWeb.dao.AparelhosDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	
<title>Editar Aparelhos</title>
</head>
<body>

<%
	long aparelhoid = Long.parseLong(request.getParameter("id"));
	AparelhosDao dao = new AparelhosDao();
	Aparelhos aparelhos = dao.findById(Aparelhos.class, aparelhoid).get();
%>

<h1>Editar Aparelhos</h1>
	
	<form action="controllerAparelhos" method="post">
		<input type="hidden" name="aparelhoid" value="<%= aparelhoid %>"/>
			
			<label>Nome do Aparelho</label>
			<input type="text" name="nomeAparelho" value="<%= aparelhos.getNomeAparelho() %>"/>
			<br/>
			
			<label>Função do Aparelho</label>
			<input type="text" name="funcaoAparelho" value="<%= aparelhos.getFuncaoAparelho() %>"/>
			<br/>
			
			<input type="submit" value="Salvar"/>
		
		</form>

</body>
</html>