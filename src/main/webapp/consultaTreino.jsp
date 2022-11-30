<%@page import="UniSaudeWeb.dao.PessoaDao"%>
<%@page import="UniSaudeWeb.model.Pessoa"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.Treino"%>
<%@page import="UniSaudeWeb.dao.TreinoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
<title>Consulta Treino</title>
</head>
<body>

<%
	TreinoDao dao = new TreinoDao();
	PessoaDao daoPessoa = new PessoaDao();

	List<Treino> treinos = dao.findAll(Treino.class);	


%> 

<div class="container">
	<a class="btn btn-primary" href="formTreino.jsp">Novo Treino</a>
	
	
	<table class="table table-bordered">
		
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome Exercicio</th>
				<th>Tipo Treino</th>
				<th></th>	
				<th></th>		
			</tr>
		</thead>
		<tbody>
		
		<%
		for(Treino treino: treinos){ 
			
		%> 
		
			<tr>
				
				<td><%=treino.getNomeExecicio()%></td>  
				
				<td><%=treino.getTipoTreino()%></td>

				<td>
					<a class="btn btn-secondary btn-sm" 
						href="editTreino.jsp?id=<%=treino.getId() %>">Editar</a>
						<a class="btn btn-secondary btn-sm" 
						href="formAparelho.jsp?id=<%=treino.getId() %>">Aparelhos</a>					
				</td>
					
				<td>
					<a class="btn btn-secondary btn-sm"
						href="${pageContext.request.contextPath}/controllerTreino?id=<%=treino.getId()%>">Excluir</a>
				</td>
			</tr>
			<%
				}

			%> 
		</tbody>
	</table>

</body>
</html>
        <script>
            const btnMobile = document.getElementById('btn-mobile');

            function toggleMenu(event) {
              if (event.type === 'touchstart') event.preventDefault();
              const nav = document.getElementById('nav');
              nav.classList.toggle('active');
              const active = nav.classList.contains('active');
              event.currentTarget.setAttribute('aria-expanded', active);
              if (active) {
                event.currentTarget.setAttribute('aria-label', 'Fechar Menu');
              } else {
                event.currentTarget.setAttribute('aria-label', 'Abrir Menu');
              }
            }

            btnMobile.addEventListener('click', toggleMenu);
            btnMobile.addEventListener('touchstart', toggleMenu);
        </script>