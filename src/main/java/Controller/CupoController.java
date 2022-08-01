/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Datos.QueryAdminCupoDAO;
import Model.AR_admin_cupo;
import java.io.IOException;
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
@WebServlet("/Cupo")
public class CupoController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {                
        String action = request.getParameter("action");
        if (action != null) {
            switch(action){
                case "add":
                    request.getRequestDispatcher("/WEB-INF/Vista/Vista_Cupo/frm_abrir_cupo.jsp").forward(request, response);
                    break;
                case "editar":
                    editarCupo(request, response);
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
        String action = request.getParameter("action");
        if (action != null) {
            switch(action){
                case "cambiar_estado":
                    this.cambiarEstado(request, response);
                    break;
                case "modificar_cupo":
                    this.modificarCupo(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }   
        }else{
            this.accionDefault(request, response);
        }
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        List<AR_admin_cupo> cupos = new QueryAdminCupoDAO().consultarCupos();
        System.out.println("cupos = " + cupos);
        request.setAttribute("cupos", cupos);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Cupo/frm_admin_cupo.jsp").forward(request, response);
    }
    
    private void cambiarEstado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idCupo = Integer.parseInt(request.getParameter("idCupo"));
        boolean nuevoEstado =  Boolean.parseBoolean(request.getParameter("nuevoEstado"));        
        AR_admin_cupo cupo = new AR_admin_cupo(idCupo, nuevoEstado);
        int registroModificado = new QueryAdminCupoDAO().actualizarEstado(cupo);
        System.out.println("registroModificado = " + registroModificado);
        this.accionDefault(request, response);        
    }
    
    private void editarCupo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idCupo = Integer.parseInt(request.getParameter("id"));
        AR_admin_cupo cupo = new QueryAdminCupoDAO().findOneById(new AR_admin_cupo(idCupo));
        request.setAttribute("cupo", cupo);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Cupo/frm_editar_cupo.jsp").forward(request, response);
    }
    
    private void modificarCupo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idCupo = Integer.parseInt(request.getParameter("id"));
        int totalCupo = Integer.parseInt(request.getParameter("totalCupo"));
        int cupoEstudiante = Integer.parseInt(request.getParameter("cupoEstudiante"));
        int cupoFuncionario = Integer.parseInt(request.getParameter("cupoFuncionario"));
        int cupoExtra = Integer.parseInt(request.getParameter("cupoExtra"));
        AR_admin_cupo cupo = new AR_admin_cupo(idCupo, totalCupo, cupoEstudiante, cupoFuncionario, cupoExtra);
        int registroModificado = new QueryAdminCupoDAO().actualizarCupo(cupo);
        System.out.println("registrosModificados = " + registroModificado);
        this.accionDefault(request, response);
    }
}
