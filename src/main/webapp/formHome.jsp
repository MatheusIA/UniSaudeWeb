<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Home</title>
</head>
<body>
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

  <div class="body">
    <div class="text">
      <h1>A sua melhor opção na hora de levar uma vida + saudável</h2>
    </div>
    <div class="align">
      <div class="subtext">
        <p>Equipamentos</p>
        <span>Os melhores equipamentos, infraestrutura e muito mais com mensalidades acessíveis</span>
      </div>
      <div class="subtext">
        <p>Saúde melhor</p>
        <span>Oferecemos um estilo de vida mais saudável, atingindo uma melhora na saúde e no físico</span>
      </div>
      <div class="subtext">
        <p>Personal Trainer</p>
        <span>Contamos com diversos instrutores que irão lhe auxiliar em seus treinos de forma indívidual</span>
      </div>
    </div>
  </div>

  <div class="info">
    <div class="alignInfo">
      <div class="alignText">
        <p>Fazer exercícios físicos é uma excelente forma de manter a saúde e consequentemente
          melhorar a forma física, mas é preciso muito atenção, pois é perigoso realizá-los por
          conta própria.</p>
        <p>Temos profissionais habilitados a ensinar e orientar a melhor maneira de como executá-los,
          sem machucar e tencionar os músculos, cada exercício exige uma técnica que tem que ser seguida
          para que haja resultados e também não lesione nenhuma parte do seu corpo.</p>
      </div>
      <img src="https://blog.fiturban.com.br/wp-content/uploads/2021/08/xmembros-superiores-1000x640.jpg.pagespeed.ic.1WEFCdYmDS.jpg" />
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
