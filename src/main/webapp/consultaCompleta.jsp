<%@page import="UniSaudeWeb.model.Treino"%>
<%@page import="UniSaudeWeb.dao.TreinoDao"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UniSaudeWeb.model.MedidasCorporais"%>
<%@page import="UniSaudeWeb.dao.MedidasCorporaisDao"%>
<%@page import="com.mysql.cj.Query"%>
<%@page import="UniSaudeWeb.model.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.dao.AlunoDao"%>
<%@page import="UniSaudeWeb.dao.ConsultaTotalDao"%>
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
	
<title>Consulta Completa</title>
</head>
<body>

	<%
		MedidasCorporaisDao dao = new MedidasCorporaisDao();
		TreinoDao daoTreino = new TreinoDao();
	
		Long id = Long.parseLong(request.getParameter("id"));
		
		List<Long> medidasid = dao.getMedidasCorporais(id);
		List<Long> treinoid = daoTreino.getTreinos(id);
		
		List<MedidasCorporais> medidas = new ArrayList<MedidasCorporais>();	
		List<Treino> treinos = new ArrayList<Treino>();
		
		for(Long medidaid : medidasid)
		{
			MedidasCorporais medidafind = dao.findById(MedidasCorporais.class, medidaid).get();
			medidas.add(medidafind);
		}
		
		for(Long treinosid : treinoid)
		{
			Treino treinofind = daoTreino.findById(Treino.class, treinosid).get();
			treinos.add(treinofind);
		}
		
		
		
	
	%>
<div class="container">
	
	<table class="table table-bordered">
		
		<thead>
			<tr>
				<th>ID</th>
				<th>Abdomen</th>
				<th>Altura</th>
				<th>Braco</th>
				<th>Perna</th>
				<th>Peso</th>
		
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
								

				
			</tr>
			<%
				} 
		
			%> 
			
			
		</tbody>
	</table>
	</div>
	
	<div class="container">
	<table class="table table-bordered">
		
		<thead>
			<tr>
				<th>ID</th>
				<th>Exercicio</th>
				<th>Tipo</th>
					
			</tr>
		</thead>
		<tbody>
		
		<%
				
			for(Treino treino: treinos){ 
			
		%> 
		
			<tr>
				<td><%= treino.getId() %></td> 
				
				<td><%= treino.getNomeExecicio() %></td>  
				
				<td><%= treino.getTipoTreino() %></td>

			</tr>
			<%
				} 
		
			%> 

			
			
		</tbody>
	</table>
	</div>
	
</body>
</html>