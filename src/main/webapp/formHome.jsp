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
          <li><a href="./aluno.html">Aluno</a></li>
          <li><a href="/">Treino</a></li>
          <li><a href="/">Medidas</a></li>
          <li><a href="/">Aparelhos</a></li>
        </ul>
      </nav>
    </div>
    <div class="alingMenu">
      <a src="./Home.html"><img class="home" src="./img/img.png" /></a>
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

<style>
body,
ul {
  margin: 0px;
  padding: 0px;
  margin: 0;
  font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  background-color: #f8f8f8;
}

ul li {
  list-style-type: none;
}

a {
  color: black;
  text-decoration: none;
  font-family: sans-serif;
}

a:hover {
  background: rgba(0, 0, 0, 0.05);
}

#logo {
  font-size: 1.5rem;
  font-weight: bold;
}

#header {
  box-sizing: border-box;
  height: 70px;
  padding: 1rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: #e7e7e7;
}

  #menu {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    background: #333;
    transition: 0.6s;
    z-index: 1000;
    height: 0px;
    visibility: hidden;
    overflow-y: hidden;
    min-width: 140px;
    padding-top: 15px;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  #nav.active #menu {
    height: 100%;
    visibility: visible;
    box-shadow: 3px 79px 6px 1px #00000061;
  }
  #menu a {
    padding: 1rem 0;
    margin: 0 1rem;
    border-bottom: 2px solid rgba(0, 0, 0, 0.05);
  }
  #btn-mobile {
    display: flex;
    padding: 0.5rem 1rem;
    font-size: 1rem;
    border: none;
    background: none;
    cursor: pointer;
    gap: 0.5rem;
  }
  #hamburger {
    border-top: 5px solid;
    width: 35px;
    color: #04AA6D;
  }
  #hamburger::after,
  #hamburger::before {
    content: '';
    display: block;
    width: 35px;
    height: 5px;
    background: currentColor;
    margin-top: 5px;
    transition: 0.3s;
    position: relative;
  }
  #nav.active #hamburger {
    border-top-color: transparent;
  }
  #nav.active #hamburger::before {
    transform: rotate(135deg);
  }
  #nav.active #hamburger::after {
    transform: rotate(-135deg);
    top: -10px;
  }

  .topnav {
    overflow: hidden;
    background-color: #333;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 128px;
    height: 80px;
  }
  
    .topnav .alingMenu {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .topnav .alingMenu .home {
        margin-right: 20px;
        height: 60px;
        cursor: pointer;
        border-radius: 13px;
    }

  .topnav a {
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
    margin-right: 27px;
    width: 90px;
  }

  .topnav a:hover {
    background-color: #ddd;
    color: black;
    border-radius: 6px;
    transition: .5s;
  }
    
  .topnav .loginIcon {
    width: 20px;
    height: 20px;
    cursor: pointer;
  }

  .topnav a.active {
    background-color: #04AA6D;
    color: white;
    border-radius: 6px;
    display: flex;
    align-items: center;
    justify-content: space-around;
  }

  .topnav a.active:hover {
    background-color: #01d185;
    transition: .5s;
  }

/* Corpo do Site */

.body {
    background: #04AA6D;;
    height: 280px;
}

.body .text {
    margin: 0 auto;
    width: 1111px;
}

.body .text h1{
    margin: 0;
    text-align: center;
    padding-top: 35px;
    font-size: 2rem;
    color: #ffff;
}

.body .align{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 35px;
}

.body .align .subtext{
    text-align: center;
    width: 100%;
    max-width: 350px;
    color: #ffff;
    font-weight: 500;
}

.info{
  margin: 50px 0;
  padding: 0 128px;
}

.info .alignInfo {
  display: flex;
  gap: 40px;
  justify-content: space-between;
}

.info .alignInfo img {
  width: 45%;
  height: 45%;
  border-radius: 14px;
  box-shadow: 0px 4px 6px 0px #00000045;
}

.info .alignInfo .alignText {
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 45%;
  font-size: 18px;
}

.footer .socials {
  display: flex;
  align-items: center;
  background: #e8e9eb;
  color: var(--grey-text-dark);
  height: 116px;
}

.footer .socials .title{
  margin: 0;
  font-weight: 500;
  font-size: 1em;
  line-height: 1.188rem;
  color: #282828;
}

.footer .socials .title label {
  margin: 0;
  font-weight: 500;
  font-size: 1em;
  color: #282828;
}

.footer .socials .title p {
  font-weight: 700;
  color: #3e3e3e;
  font-size: 1.5em;
  line-height: 1.75rem;
  text-transform: uppercase;
  margin: 0;
}

.footer hr{
  width: 90%;
  border-color: #ffffff;
  opacity: .5;
}

.footer span{
  display: flex;
  justify-content: center;
  margin: 10px 0 5px;
  color: #666666;
}

/* TELA ALUNO */

.bodyAluno {
  position: fixed;
  width: 100%;
  height: 100%;
  background-color: #04AA6D ;
}

.bodyAluno .align {
  padding: 0 150px;
  color: #ffffff;
}

.bodyAluno .align .alunoBtn .button {
  width: 300px;
  height: 65px;
  border-radius: 14px;
  border: none;
  cursor: pointer;
  font-size: 18px;
  background-color: #fff;
  box-shadow: 0px 0px 7px -3px #646464;
}

.bodyAluno .align .alunoBtn .button:hover {
  background-color: #d7d6d7;
  transition: 1s;
}


#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background: white;
  box-shadow: 0px 3px 6px 1px #64646494;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  border: none;
}

#customers tr:nth-child(even){ background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #333;
  color: white;
  border: none;
}
</style>
