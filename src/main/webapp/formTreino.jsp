<%@page import="UniSaudeWeb.model.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.dao.AlunoDao"%>
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
	<link rel="stylesheet" type="text/css" href="./styles/main.css">	
<title>Cadastrar Treino</title>
</head>
<body>

<%
	AlunoDao daoAluno = new AlunoDao();
	List<Aluno> alunos = daoAluno.findAll(Aluno.class);
	Aluno aluno = new Aluno();
%>

	<form action="controllerTreino" method="post">
	<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
		<label>Nome do Exercicio</label>
		<input type="text" name="nomeExercicio"/>
		<br/>
		
		<label>Tipo de Treino</label>
		<input type="text" name="tipoTreino"/>
		<br/>
		
		<label>Ficha</label>
		<input type="text" name="ficha"/>
		<br/>
		
		<label>Repetição</label>
		<input type="text" name="repeticao"/>
		<br/>
		
		<label>Serie</label>
		<input type="text" name="serie"/>
		<br/>
		
		<input type="submit" value="Salvar"/>
	
	</form>
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