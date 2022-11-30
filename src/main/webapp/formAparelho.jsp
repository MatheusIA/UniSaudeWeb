<%@page import="UniSaudeWeb.model.Treino"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.dao.TreinoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	
<title>Cadastro Aparelho</title>
</head>
<body>

<%
	TreinoDao dao = new TreinoDao();
	List<Treino> treinos = dao.findAll(Treino.class);
	Treino treino = new Treino();
	
%>

	<form action="controllerAparelhos" method="post">
	<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
		<label>Função do Aparelho</label>
		<input type="text" name="funcaoAparelho"/>
		<br/>
		
		<label>Nome do Aparelho</label>
		<input type="text" name="nomeAparelho"/>
		<br/>
		
		<input type="submit" value="Salvar"/>
	
	</form>
</body>
</html>