<html>
    <head>
        <meta charset="UTF-8">
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <title>Cadastro</title>
    </head>
    <body>
        <%
            String a = "";
            if (request.getAttribute("naoExiste") != null) {
                a = (String) (request.getAttribute("naoExiste"));
            }
        %>
        <nav>
            <div class="nav-wrapper purple">
                <a href="index.html" class="brand-logo">PII</a>
                <ul  class="right hide-on-med-and-down">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="quemSomos.html">Quem Somos</a></li>
                    <li><a href="faleConosco.jsp">Fale Conosco</a></li>    
                </ul> 
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <form class="col s6 z-depth-3 formcad " name="form1" accept-charset="UTF-8" action="Control1" method="POST">
                    <h2 class="center-align">Cadastrar</h2>
                    <div class="row">
                        <div class="input-field col s12">
                            <input  type="text" name="nome" class="novalidate" required>
                            <label for="nome" data-error="user" data-success="right"  >Nome</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input  type="text" name="user" class="validate" required>
                            <label for="email">E-mail</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="email" type="text" name="senha" class="validate" required>
                            <label for="email">Senha</label>
                        </div>
                    </div>
                    <button class="btn waves-effect waves-light right" type="submit" name="action">Cadastrar </button>
                </form>


                <form class="col s6 z-depth-2 formcad" name="form1" accept-charset="UTF-8" action="Control2" method="POST">
                    <h2 class="center-align">Login</h2>
                    <div class="row">
                        <div class="input-field col s12">
                            <input  type="text" name="user" class="validate" required>
                            <label for="email">E-mail</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input  type="password" name="senha" class="validate" required>
                            <label for="senha">Senha</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12"></div>
                    </div>
                    <h6><%=a%></h6>
                    <button class="btn waves-effect waves-light right" type="submit" name="action">Login</button>
                </form>
            </div>
        </div>
        <footer class="page-footer purple">
            <div class="container">
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
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <p align="center">© 2017 ProjetoIntegrador 2</p>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/js.js"></script>
        <script src="js/jquery.mask.js"></script>
        <script>
            $("#form input:eq(0)").mask(
                    "C",
                    {
                        translation: {
                            "C": {
                                pattern: /[A-Z\s]/i,
                                recursive: true
                            }
                        },
                        placeholder: "Somente letras e espaços"
                    }
            );


            $("#form").submit(function () {
                var nome = $("#form input:eq(0)").val();
                var email = $("#form input:eq(1)").val();
                var senha = $("#form input:eq(2)").val();
                console.log(nome);
                console.log(email);
                console.log(senha);
                var testenome = verificaNome(nome);
                var testeemail = verificaemail(email);
                var testesenha = verificasenha(senha);



                if (testenome && testeemail && testesenha) {

                    return true;
                } else {

                    return false;
                }


            }
            );

            function verificaNome(nome) {

                var regex = /^[a-z\s]{2,}$/i;

                if (regex.test(nome)) {

                    return true;
                } else {

                    return false;
                }
            }

            function verificaemail(email) {

                var regex = /^\w{2,}\@[a-z]{2,}$/i;


                if (regex.test(email)) {

                    return true;
                } else {

                    return false;
                }
            }

            function verificasenha(senha) {

                var regex = /^\w{5,}$/i;


                if (regex.test(senha)) {

                    return true;
                } else {

                    return false;
                }
            }

        </script>
    </body>
</html>
