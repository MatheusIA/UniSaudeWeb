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
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
	
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
      <div class="alignRegister">
        <div>
           <table class="tabWidth" id="customers">
             <thead>
               <tr>
                 <th>Abdomen</th>
                 <th>Altura</th>
                 <th>Braco</th>
                 <th>Perna</th>
                 <th>Peso</th>
                 <th>Data Avaliação</th>
                 
               </tr>
             </thead>
             <tbody>
               <% for(MedidasCorporais medida: medidas){ %>
                 <tr>

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
                     <%= medida.getDataAvaliacao() %>
                   </td>
                 </tr>
                 <% } %>
             </tbody>
           </table>
           <table class="tabWidth" id="customers">
             <thead>
               <tr>
                 <th>Exercicio</th>
                 <th>Tipo</th>
               </tr>
             </thead>
             <tbody>
               <% for(Treino treino: treinos){ %>

                 <tr>
                   
                   <td>
                     <%= treino.getNomeExecicio() %>
                   </td>

                   <td>
                     <%= treino.getTipoTreino() %>
                   </td>
                 </tr>
                 <% } %>
             </tbody>
           </table>
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