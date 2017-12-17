package Controller;

import Model.Clientes;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Control2", urlPatterns = {"/Control2"})
public class Control2 extends HttpServlet {

    public List<Clientes> le() throws FileNotFoundException, IOException
    {
            
            List<Clientes> result = new ArrayList<>();
            String caminhoDir = getServletContext().getRealPath("/WEB-INF");    
            File arquivo = new File(caminhoDir,"clientes.txt");
	    if(arquivo.exists())
            {
               String linha;
               String cli = getServletContext().getRealPath("/WEB-INF/clientes.txt");    
               BufferedReader b = new BufferedReader(
                                      new InputStreamReader(
                                          new FileInputStream(cli), Charset.forName("UTF-8").newDecoder()));
               while(( linha = b.readLine()) != null)
                  if ((linha != null) && (!linha.isEmpty()))
                  {
                    Clientes c = new Clientes();
                    String[] vetCliente = linha.split(";");
                    c.setId(Integer.parseInt(vetCliente[0]));
                    c.setNome(vetCliente[1]);
                    c.setUser(vetCliente[2]);
                    c.setSenha(vetCliente[3]);
                    result.add(c);
                  }
               b.close();
               
            }
            return result;
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
           
        List<Clientes> result = le();
        if(!result.isEmpty()){
            int cont1=0,cont2=0,cont3=0;
            for (Clientes c : result){    
                if((request.getParameter("user").equals(c.getUser()))&&(request.getParameter("senha").equals(c.getSenha()))){
                    cont1++;
                }else if((!request.getParameter("user").equals(c.getUser()))||(!request.getParameter("senha").equals(c.getSenha()))){
                    cont2++;
                }
                cont3++;
            }
            if(cont1>0){
                request.getRequestDispatcher("cursos.html").forward(request, response);
            }else if(cont2>cont1){
                String naoExiste = "Usuário/Senha estão incorretos ou não existem";
                request.setAttribute("naoExiste", naoExiste);
                request.getRequestDispatcher("cadastroLogin.jsp").forward(request, response);
            }
        }else{
            String naoExiste = "Usuário/Senha estão incorretos ou não existem";
            request.setAttribute("naoExiste", naoExiste);
            request.getRequestDispatcher("cadastroLogin.jsp").forward(request, response);                    
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
