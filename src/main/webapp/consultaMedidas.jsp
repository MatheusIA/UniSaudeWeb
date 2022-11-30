<%@page import="UniSaudeWeb.dao.AlunoDao"%>
<%@page import="UniSaudeWeb.model.Aluno"%>
<%@page import="UniSaudeWeb.model.Pessoa"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.model.MedidasCorporais"%>
<%@page import="UniSaudeWeb.dao.MedidasCorporaisDao"%>
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
<title>Consulta Medidas</title>
</head>
<body>

  <% MedidasCorporaisDao dao=new MedidasCorporaisDao(); 
  	List<MedidasCorporais> medidas = dao.findAll(MedidasCorporais.class);
    //MedidasCorporais medida = new MedidasCorporais();

    AlunoDao daoAluno = new AlunoDao();
    List<Aluno> alunos = daoAluno.findAll(Aluno.class);
    //Aluno aluno = new Aluno();
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
          <h1>Medidas</h1>
          <div class="alunoBtn">
            <button class="button"><a href="formMedidas.jsp">Nova Medida</a></button>
          </div>
          <div class="dont">
            <!-- <h2>Nenhum aluno cadastrado no momento...</h2> -->
            <h2>Medidas cadastradas</h2>
          </div>
          <table id="customers">
            <tr>
              <th>ID</th>
              <th>Abdomen</th>
              <th>Altura</th>
              <th>Braco</th>
              <th>Perna</th>
              <th>Peso</th>
              <th></th>
              <th></th>
            </tr>
            <% for(MedidasCorporais medida: medidas){ %>
              <tr>
                <td>
                  <%= medida.getId() %>
                </td>

                <td>
                  <%= medida.getAbdomen()%>
                </td>

                <td>
                  <%= medida.getAltura()%>
                </td>
                <td>
                  <%= medida.getBraco()%>
                </td>
                <td>
                  <%= medida.getPerna()%>
                </td>
                <td>
                  <%= medida.getPeso()%>
                </td>

                <td>

                  <a class="btn btn-secondary btn-sm"
                   href="editMedidas.jsp?id=<%= medida.getId() %>">Editar</a>

                </td>

                <td>
				<a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/controllerMedidas?id=<%= medida.getId() %>">Excluir</a>
				</td>
			</tr>
			<%
				} 
		
			%> 
		</tbody>
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