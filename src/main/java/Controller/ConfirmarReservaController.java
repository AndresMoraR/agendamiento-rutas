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

/**
 *
 * @author OSIADMIN
 */
@WebServlet("/confireserva")
public class ConfirmarReservaController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {                
        String action = request.getParameter("action");
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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Reserva/frm_admin_confirmar_reserva.jsp").forward(request, response);
    }
}


