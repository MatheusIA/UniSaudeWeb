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
	
<title>Cadastrar Treino</title>
</head>
<body>

	<form action="controllerTreino" method="post">
		<label>Nome do Exercicio</label>
		<input type="text" name="nomeExercicio"/>
		<br/>
		
		<label>Tipo de Treino</label>
		<input type="text" name="tipoTreino"/>
		<br/>
		
		<input type="submit" value="Salvar"/>
	
	</form>
</body>
</html>