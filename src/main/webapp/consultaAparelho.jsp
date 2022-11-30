<%@page import="org.apache.tomcat.util.net.AprEndpoint"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.Aparelhos"%>
<%@page import="UniSaudeWeb.dao.AparelhosDao"%>
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
	
<title>Aparelhos</title>
</head>
<body>

  <% 
  	AparelhosDao dao=new AparelhosDao(); 
  	 List<Aparelhos> aparelhos = dao.findAll(Aparelhos.class);
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
        <h1>Aparelhos</h1>
        <div class="alunoBtn">
          <button class="button"><a href="formAparelho.jsp">Novo Aparelho</a></button>
        </div>
        <div class="dont">
          <!-- <h2>Nenhum aluno cadastrado no momento...</h2> -->
          <h2>Aparelhos cadastrados</h2>
        </div>
        <table id="customers">
          <tr>
            <th>ID</th>
            <th>Nome Aparelho</th>
            <th>Função Aparelho</th>
            <th></th>
            <th></th>
          </tr>
          <% for(Aparelhos aparelho: aparelhos){ %>
            <tr>
              <td>
                <%=aparelho.getId()%>
              </td>

              <td>
                <%=aparelho.getNomeAparelho()%>
              </td>

              <td>
                <%=aparelho.getFuncaoAparelho() %>
              </td>

              <td>

                <a class="btn btn-secondary btn-sm" href="editAparelho.jsp?id=<%=aparelho.getId()%>">Editar</a>

              </td>

              <td>
                <a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/controllerAparelhos?id=<%=aparelho.getId()%>">Excluir</a>
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