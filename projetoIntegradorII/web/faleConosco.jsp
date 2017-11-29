<html>
    <head>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link type="text/css" rel="stylesheet" href="css/style.css"  />
    </head>
    <body>
        <nav>
            <div class="nav-wrapper deep-purple darken-2">
                <a href="#" class="brand-logo">Projeto Integrador II</a>
                <ul  class="right">
                    <li><a href="quemSomos.jsp">Quem Somos</a></li>
                    <li><a href="">Cursos</a></li>
                </ul> 
            </div>
        </nav>
        <div class="container">
        <form name="formulario" action="" method="post">
            <input type=hidden name="destino" value="pii@teste.com.br">
            <input type=hidden name="enviado" value="http://www.seudominio.xxx.yy/enviado.html">
            <p><b>Nome:</b><br>
            <input type=text name="nome" size="45"></p><br>
            <p><b>Email:</b><br>
            <input type=text name="email" size="45"></p><br>
            <p><b>Assunto:</b><br>
            <input type=text name="assunto" size="45"></p><br>
            <p><b>Mensagem:</b><br>
            <textarea name="Mensagem" rows="100" cols="60" wrap="virtual"></textarea></p><br>
            
            <button class="btn waves-effect waves-light right" type="reset">Limpar Formulário</button></br>
            <button class="btn waves-effect waves-light right" type="submit">Enviar Email</button>
        </form>
        </div>
        <footer class="page-footer deep-purple darken-2">
            <div class="footer-copyright">
                <div class="container">
                    © 2017 Copyright PI-II / IFTM
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/js.js"></script>
    </body>
</html>