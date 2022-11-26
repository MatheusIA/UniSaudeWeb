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
	
<title>Medidas Corporais</title>
</head>
<body>

	<form action="controllerMedidas" method="post">
		<label>Abdomen</label>
		<input type="text" name="abdomen"/>
		<br/>
		
		<label>Altura</label>
		<input type="text" name="altura"/>
		<br/>
		
		<label>Braco</label>
		<input type="text" name="braco"/>
		<br/>
		
		<label>Data Avaliação</label>
		<input type="text" name=""/>
		<br/>
		
		<label>IMC</label>
		<input type="text" name=""/>
		<br/>
		
		<label>Perna</label>
		<input type="text" name="perna"/>
		<br/>
		
		<label>Peso</label>
		<input type="text" name="peso"/>
		<br/>		
		
		<input type="submit" value="Salvar"/>
	
	</form>
</body>
</html>