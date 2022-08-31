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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch(accion){
                case "login":
                    this.login(request, response);
                    break;
                case "logout":
                    this.logout(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }   
        }else{
            this.accionDefault(request, response);
        }            
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Usuario/frm_login.jsp").forward(request, response);
    }
    
    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo = request.getParameter("email");
        int num_id = Integer.parseInt(request.getParameter("contraseña"));
        AR_user user = new QueryLoginDAO().findOneById(new AR_user(num_id, correo));
        System.out.println("user = " + user);
        /*StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
        String encryptedPassword = passwordEncryptor.encryptPassword(userPassword);
        if (passwordEncryptor.checkPassword(request.getParameter("contraseña"), encryptedPassword)) {
          // correct!
        } else {
          // bad login!
        }*/
        //request.getRequestDispatcher("/WEB-INF/Vista/Home/frm_home.jsp").forward(request, response);
    }
    
    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Usuario/frm_login.jsp").forward(request, response);
    }   
    
}
