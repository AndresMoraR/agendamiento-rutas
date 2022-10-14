/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author beamora
 */
@WebServlet("/bloque")
public class BloqueController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        HttpSession sesion = request.getSession();
        if(sesion.getAttribute("id") != null){
            this.accionDefault(request, response); 
        }else{
            this.redirectToIndex(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*HttpSession sesion = request.getSession();
        String accion = request.getParameter("accion");
        if(sesion.getAttribute("id") != null){
            if (accion != null) {
                switch(accion){
                    case "":
                        
                        break;
                    default:
                        this.accionDefault(request, response);
                }   
            }else{
                this.accionDefault(request, response);
            }
        }else{
            this.redirectToIndex(request, response);
        }*/
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Bloque/frm_generar_bloque.jsp").forward(request, response);
    }
    
    private void redirectToIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.sendRedirect("index.jsp");
    }
    
    
}
