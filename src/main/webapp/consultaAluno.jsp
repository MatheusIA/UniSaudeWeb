<%@page import="UniSaudeWeb.model.MedidasCorporais"%>
<%@page import="UniSaudeWeb.dao.MedidasCorporaisDao"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.Aluno"%>
<%@page import="UniSaudeWeb.dao.Dao"%>
<%@page import="UniSaudeWeb.dao.AlunoDao"%>

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
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
	
<title>Aluno</title>
</head>
<body>

	<%
	AlunoDao dao = new AlunoDao();
	List<Aluno> alunos = dao.findAll(Aluno.class);
	
	MedidasCorporaisDao daoMedida = new MedidasCorporaisDao();
	List<MedidasCorporais> medidas = daoMedida.findAll(MedidasCorporais.class);
	
	
	%> 

<div class="topnav">
  <div>
    <!-- <a href="/sobre">Sobre nós</a> -->
    <nav id="nav">
      <button aria-label="Abrir Menu" id="btn-mobile" aria-haspopup="true" aria-controls="menu" aria-expanded="false">
        <span id="hamburger"></span>
      </button>
      <ul id="menu" role="menu">
        <li><a href="consultaAluno.jsp">Aluno</a></li>
            <li><a href="consultaTreino.jsp">Treino</a></li>
            <li><a href="consultaMedidas.jsp">Medidas</a></li>
            <li><a href="consultaAparelho.jsp">Aparelhos</a></li>
      </ul>
    </nav>
  </div>
  <div class="alingMenu">
    <img class="home" src="./img/img.png" />
    <!--     <a class="active" href="#home"><img class="loginIcon" src="./img/login.png"/> Entrar</a> -->
  </div>
</div>
    <div class="bodyAluno">
      <div class="align">
        <h1>Alunos</h1>
        <div class="alunoBtn">
          <button class="button">
          <a href="formAluno.jsp">Novo Aluno</a>
          </button>
        </div>
        <div class="dont">
          <!-- <h2>Nenhum aluno cadastrado no momento...</h2> -->
          <h2>Alunos cadastrados</h2>
        </div>
        <table id="customers">
          <tr>
            <th>Nome</th>
            <th>Idade</th>
            <th>Nivel</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
          </tr>
          <% for(Aluno aluno: alunos) {
    	  
    	  %>
        <tr>
          <td>
            <%=aluno.getNome()%>
          </td>
          <td>
          	<%= aluno.getIdade() %>
          <td>
            <%=aluno.getNivelaluno() %>
          </td>
          <td>
	          <a class="btn btn-secondary btn-sm" 
	          	href="editAluno.jsp?id=<%=aluno.getId()%>">Editar</a>
	         </td> 	
	         <td>
	          <a class="btn btn-secondary btn-sm" 
	          	href="formMedidas.jsp?id=<%=aluno.getId()%>"> Criar Medidas</a>
	          </td>	
	          <td>
	          <a class="btn btn-secondary btn-sm" 
	          	href="formTreino.jsp?id=<%=aluno.getId()%>">Criar Treino</a>
	          </td>	
	          <td>
	          <a class="btn btn-secondary btn-sm" 
	           	href="consultaCompleta.jsp?id=<%=aluno.getId()%>">Consulta Completa</a>
	         </td>
	         <td>
	         <a class="btn btn-secondary btn-sm" 
	           	href="${pageContext.request.contextPath}/controllerAluno?id=<%= aluno.getId() %>">Excluir</a>
	         </td>
	         
        </tr>
        <% }  %>
        </table>
      </div>
    </div>
  </div>
</div>

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