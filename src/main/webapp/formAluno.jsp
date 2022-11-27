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
	
<title>Cadastrar Aluno</title>
</head>
<body>

	<h1>Cadastro Aluno</h1>
	
	<form action="controllerAluno" method="post">
		<label>Nome</label>
		<input type="text" name="nome"/>
		<br/>
		
		<label>Email</label>
		<input type="text" name="email"/>
		<br/>
		
		<label>Nivel Aluno</label>
		<input type="text" name="nivelAluno"/>
		<br/>
		
		<label>Idade</label>
		<input type="text" name="idade"/>
		<br/>
		
		
		<input type="submit" value="Salvar"/>
	
	</form>
</body>
</html>