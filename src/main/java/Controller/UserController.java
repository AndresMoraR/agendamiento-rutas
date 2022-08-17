/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Datos.QueryFacultadAreaDAO;
import Model.AR_facultad_area;
import java.io.IOException;
import java.util.List;
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
@WebServlet("/User")
public class UserController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
        String action = request.getParameter("action");
        if (action != null) {
            switch(action){
                case "add":
                    this.frmCrearUsuario(request, response);
                    break;
                case "editar":
                    request.getRequestDispatcher("/WEB-INF/Vista/Vista_Usuario/frm_editar_usuario.jsp").forward(request, response);
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
    
    private void frmCrearUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<AR_facultad_area> facul_areas = new QueryFacultadAreaDAO().consultarFacultadArea();
        request.setAttribute("facul_areas", facul_areas);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Usuario/frm_registro_usuario.jsp").forward(request, response);
    }
    
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Usuario/frm_admin_usuario.jsp").forward(request, response);
    }
}
