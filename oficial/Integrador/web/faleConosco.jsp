<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <title>Fale conosco</title>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper purple">
                <a href="index.html" class="brand-logo">PI2</a>
                <ul  class="right hide-on-med-and-down">
                    <li><a href="quemSomos.html">Quem somos</a></li>
                    <li><a href="cadastroLogin.jsp">Cursos</a></li>
                    <li><a href="faleConosco.jsp">Fale Conosco</a></li>    
                </ul> 
            </div>
        </nav>
        <br><br>
        <div class="container">
            <div class="row">
                <form class="col s12 z-depth-3  " name="formulario" accept-charset="UTF-8" action="http://scripts.redehost.com.br/formmail.aspx" method="POST">
                    <input type=hidden name="destino" value="brennoo.mendesmonteiro@gmail.com">
                    <input type=hidden name="enviado" value="http://localhost:8080/Integrador/faleConosco.jsp">
                    <h2 class="center-align">Fale Conosco</h2>

                    <div class="row">
                        <div class="input-field col s12">
                            <input type=text name="nome" size="45">
                            <label for="nome">Nome</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input type=text name="email" size="45">
                            <label for="email">E-mail</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input type=text name="assunto" size="45">
                            <label for="email">Assunto</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <textarea name="Mensagem" rows="10" cols="60" wrap="virtual"></textarea>
                            <label for="email">Mensagem</label>
                        </div>
                    </div>
                    <button class="btn waves-effect waves-light right" type="submit" name="action">Enviar Email</button>
                </form>
            </div>
        </div>
        <footer class="page-footer purple">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">PI2</h5>
                    <p align="justify">Nós somos um time de estudantes universitarios, trabalhando
                        em um projeto, denominado Projeto Integrador, pelo 
                        <a target="_blank" href="http://www.iftm.edu.br/uberlandiacentro/"> <strong class="white-text">Instituto Federal de Ciencias e Tecnologia do
                                Triangulo Mineiro - Campus Uberlandia Centro</strong>
                        </a>. Todo nosso trabalho foi baseado no Material Design, Desenvolvido pela 
                        equipe da Google.
                    </p>
                </div>
                <div class="col l3 s12">
                    <h5 class="white-text">Navegação</h5>
                    <ul>
                        <li><a class="white-text" href="index.html">Home</a></li>
                        <li><a class="white-text" href="quemSomos.html">Quem Somos</a></li>
                        <li><a class="white-text" href="faleConosco.jsp">Fale Conosco</a></li>
                    </ul>
                </div>
                <div class="col l3 s12">
                    <h5 class="white-text">Cursos</h5>
                    <ul>
                        <li><a class="white-text" href="cadastroLogin.jsp">Arquitetura e Organização de Computadores</a></li>
                        <li><a class="white-text" href="cadastroLogin.jsp">Fundamentos de Web Design I</a></li>
                        <li><a class="white-text" href="cadastroLogin.jsp">Inglês Instrumental</a></li>
                        <li><a class="white-text" href="cadastroLogin.jsp">Lógica de Programação</a></li>
                        <li><a class="white-text" href="cadastroLogin.jsp">Metodologia Centífica</a></li>
                        <li><a class="white-text" href="cadastroLogin.jsp">Sistemas Operacionais</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <p align="center">© 2017 ProjetoIntegrador 2</p>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/js.js"></script>
    </body>
</html>
