package Controller;

import Model.Clientes;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Control1", urlPatterns = {"/Control1"})
public class Control1 extends HttpServlet {
 
    public int le() throws FileNotFoundException, IOException
    {
            int cont=0;
            String caminhoDir = getServletContext().getRealPath("/WEB-INF");    
            File arquivo = new File(caminhoDir,"clientes.txt");
	    if(arquivo.exists()==false)
                arquivo.createNewFile();
            String cli = getServletContext().getRealPath("/WEB-INF/clientes.txt");    
            BufferedReader b = new BufferedReader(
                                   new InputStreamReader(
                                       new FileInputStream(cli), Charset.forName("UTF-8").newDecoder()));
            while(b.readLine() != null)
                    cont++;
            b.close();
            return cont;
    }
    
    public void grava(Clientes c) throws IOException
    {
            String caminhoDir = getServletContext().getRealPath("/WEB-INF");    
            File arquivo = new File(caminhoDir,"clientes.txt");
	    if(arquivo.exists()==false)
                arquivo.createNewFile();
            String cli = getServletContext().getRealPath("/WEB-INF/clientes.txt");    
            OutputStreamWriter g = new OutputStreamWriter(
                                       new FileOutputStream(cli,true),Charset.forName("UTF-8").newEncoder());
            BufferedWriter b = new BufferedWriter(g);
            b.write(c.getId()+";");
            b.write(c.getNome()+";");
            b.write(c.getUser()+";");
            b.write(c.getSenha());
            b.newLine();
            b.flush();
            b.close();   
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=UTF-8");

            int cont = le();
            Clientes c = new Clientes();
            c.setId(++cont);
            c.setNome(request.getParameter("nome"));
            c.setUser(request.getParameter("user"));
            c.setSenha(request.getParameter("senha"));
            grava(c);
            response.sendRedirect( "cadastro.html" );             
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
