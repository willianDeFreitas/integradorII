<%@page import="Model.Clientes"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo_confere.css"/>
        <title>Login&Senha</title>
    </head>
    <body>
        <div class="corpo">
        <%  
            List<Clientes> result = (List<Clientes>)request.getAttribute("resp");
            int cont1=0,cont2=0,cont3=0,cont4=0;
            for (Clientes c : result){    
                if((request.getParameter("user").equals(c.getUser())) 
                    &&
                    (request.getParameter("senha").equals(c.getSenha()))){
                    cont1++;
                }else if((!request.getParameter("user").equals(c.getUser())) 
                    ||
                    (!request.getParameter("senha").equals(c.getSenha()))){
                    cont2++;
                }
                cont3++;
            }
            if(cont1>0){
                for (Clientes c : result){
                    if((request.getParameter("user").equals(c.getUser())) 
                        &&
                        (request.getParameter("senha").equals(c.getSenha()))){
                        out.print("<h4>Bem vindo!!</h4>");
                        out.print(c.getNome());
                    }
                }
            }else if(cont2>cont1){
                 out.print("Usuário ou senha incorreto!");
            
            }
                
            out.print("<br>");
            out.print("<br>");
         %>    
         <form name="form" action="login.html" method="POST">
            <input type="submit" value="Tentar Novamente"/>
        </form>
        <form name="form" action="index.html" method="POST">
            <input type="submit" value="Voltar ao Início"/>
        </form>
        </div>
    </body>
</html>