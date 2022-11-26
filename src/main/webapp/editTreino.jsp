<%@page import="UniSaudeWeb.model.Treino"%>
<%@page import="UniSaudeWeb.dao.TreinoDao"%>
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
	
<title>Editar Treino</title>
</head>
<body>

<%
	long treinoid = Long.parseLong(request.getParameter("idTreino"));
	TreinoDao dao = new TreinoDao();
	Treino treinos = dao.findById(Treino.class, treinoid).get();
%>

<h1>Editar Treino</h1>
	
	<form action="controllerTreino" method="post">
		<input type="hidden" name="treinoid" value="<%= treinoid %>"/>
			
			<label>Nome Exercicio</label>
			<input type="text" name="nomeExercicio" value="<%= treinos.getNomeExecicio() %>"/>
			<br/>
			
			<label>Tipo de Treino</label>
			<input type="text" name="tipoTreino" value="<%= treinos.getTipoTreino() %>"/>
			<br/>
			
			<input type="submit" value="Salvar"/>
		
		</form>

</body>
</html>