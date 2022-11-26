<%@page import="UniSaudeWeb.model.MedidasCorporais"%>
<%@page import="UniSaudeWeb.dao.MedidasCorporaisDao"%>
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
	
<title>Editar Medidas</title>
</head>
<body>

<%
	long medidaid = Long.parseLong(request.getParameter("idMedida"));
	MedidasCorporaisDao dao = new MedidasCorporaisDao();
	MedidasCorporais consultaMedidas = dao.findById(MedidasCorporais.class, medidaid).get();

%>

	<h1>Editar Curso</h1>
	
		<form action="controllerMedidas" method="post">
		<input type="hidden" name="medidaid" value="<%= medidaid %>"/>
			
			<label>Abdomen</label>
			<input type="text" name="abdomen" value="<%= consultaMedidas.getAbdomen() %>"/>
			<br/>
			
			<label>Altura</label>
			<input type="text" name="altura" value="<%= consultaMedidas.getAltura() %>"/>
			<br/>
			
			<label>Braco</label>
			<input type="text" name="braco" value="<%= consultaMedidas.getBraco() %>"/>
			<br/>
			
			<label>Data Avaliação</label>
			<input type="text" name="" value="<%= consultaMedidas.getDataAvaliacao() %>"/>
			<br/>
			
			<label>IMC</label>
			<input type="text" name="" value="<%= consultaMedidas.getIMC() %>"/>
			<br/>
			
			<label>Perna</label>
			<input type="text" name="perna" value="<%= consultaMedidas.getPerna() %>"/>
			<br/>
			
			<label>Peso</label>
			<input type="text" name="peso" value="<%= consultaMedidas.getPeso() %>"/>
			<br/>
			
			<input type="submit" value="Salvar"/>
		
		</form>

</body>
</html>