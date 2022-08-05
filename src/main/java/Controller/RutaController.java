/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Datos.QueryAdminRutaDAO;
import Model.AR_admin_ruta;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author beamora
 */

@WebServlet("/Ruta")
public class RutaController extends HttpServlet{
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {                
        String action = request.getParameter("action");
        if (action != null) {
            switch(action){
                case "add":
                    request.getRequestDispatcher("/WEB-INF/Vista/Vista_Ruta/frm_crear_ruta.jsp").forward(request, response);
                    break;
                case "editar":
                    request.getRequestDispatcher("/WEB-INF/Vista/Vista_Ruta/frm_editar_ruta.jsp").forward(request, response);
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
        List<AR_admin_ruta> rutas = new QueryAdminRutaDAO().consultarRutas();
        System.out.println("rutas = " + rutas);
        request.setAttribute("rutas", rutas);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Ruta/frm_admin_ruta.jsp").forward(request, response);
    }
    
    
}
