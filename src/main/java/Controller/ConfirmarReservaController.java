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
 * @author OSIADMIN
 */
@WebServlet("/confireserva")
public class ConfirmarReservaController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {                
        HttpSession sesion = request.getSession();
        String action = request.getParameter("action");
        if(sesion.getAttribute("id") != null){
            if (action != null) {
                switch(action){
                    case "add":
                        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Reserva/frm_crear_reserva_extra.jsp").forward(request, response);
                        break;
                    default:
                        this.accionDefault(request, response);
                }   
            }
            else{
                this.accionDefault(request, response);    
            }   
        }else{
            this.redirectToIndex(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Reserva/frm_admin_confirmar_reserva.jsp").forward(request, response);
    }
    
    private void redirectToIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.sendRedirect("index.jsp");
    }
}


