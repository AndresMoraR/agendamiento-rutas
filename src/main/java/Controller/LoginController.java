/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Datos.QueryLoginDAO;
import Model.AR_user;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jasypt.util.password.StrongPasswordEncryptor;
/**
 *
 * @author OSIADMIN
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.accionDefault(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.login(request, response);     
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        sesion.invalidate();
        System.out.println(sesion);
        response.sendRedirect("index.jsp");
    }
    
    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo = request.getParameter("email");
        int num_id = Integer.parseInt(request.getParameter("password"));
        AR_user user = new QueryLoginDAO().findOneByIdEmail(new AR_user(num_id, correo));
        System.out.println("user = " + user.getPassword());
        StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
        if (passwordEncryptor.checkPassword(request.getParameter("password"), user.getPassword())) {
             //creamos o recuperamos el objeto http session
            HttpSession sesion = request.getSession();           
            sesion.setAttribute("id", user.getIdentificacion());
            sesion.setAttribute("nombre_user", user.getNombres());
            sesion.setAttribute("rol", user.getRol());
        } else {
            response.sendRedirect("index.jsp");
        }        
    }
}
