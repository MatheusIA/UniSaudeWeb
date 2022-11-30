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
	List<Treino> treinos = dao.findAll(Treino.class);	
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
            <li><a href="formTreino.jsp">Treino</a></li>
            <li><a href="formMedidas.jsp">Medidas</a></li>
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
        <h1>Treinos</h1>
        <div class="alunoBtn">
          <button class="button"><a href="formTreino.jsp">Novo Treino</a></button>
        </div>
        <div class="dont">
          <!-- <h2>Nenhum aluno cadastrado no momento...</h2> -->
          <h2>Treinos cadastrados</h2>
        </div>
        <table id="customers">
          <tr>
            <th>ID</th>
            <th>Nome Exercicio</th>
            <th>Tipo Treino</th>
            <th></th>
            <th></th>
            <th></th>
          </tr>
          <%
		for(Treino treino: treinos){ 
		%> 
            <tr>
              <td>
                <%=treino.getId() %>
              </td>

              <td>
                <%=treino.getNomeExecicio()%>
              </td>

              <td>
                <%=treino.getTipoTreino()%>
              </td>

              <td>
                <a class="btn btn-secondary btn-sm" href="editTreino.jsp?id=<%=treino.getId() %>">Editar</a>
              </td>
              <td>
                <a class="btn btn-secondary btn-sm" href="formAparelho.jsp?id=<%=treino.getId() %>">Aparelhos</a>
              </td>


              <td>
                <a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/controllerTreino?id=<%=treino.getId()%>">Excluir</a>
              </td>
            </tr>
            <% } %>
        </table>
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