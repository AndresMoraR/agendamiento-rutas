/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Datos.QueryAdminRutaDAO;
import Model.AR_admin_ruta;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
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
                    //request.getRequestDispatcher("/WEB-INF/Vista/Vista_Ruta/frm_editar_ruta.jsp").forward(request, response);
                    this.editarRuta(request, response);
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
        String action = request.getParameter("accion");
        if (action != null) {
            switch(action){
                
                case "modificar_ruta":
                    this.modificarRuta(request, response);
                    break;
                case "crear_ruta":
                    this.crearRuta(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }   
        }else{
            this.accionDefault(request, response);
        }
        
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        List<AR_admin_ruta> rutas = new QueryAdminRutaDAO().consultarRutas();
        System.out.println("rutas = " + rutas);
        request.setAttribute("rutas", rutas);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Ruta/frm_admin_ruta.jsp").forward(request, response);
    }
    
    private void editarRuta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idRuta = Integer.parseInt(request.getParameter("id"));
        AR_admin_ruta ruta = new QueryAdminRutaDAO().findOneById(new AR_admin_ruta(idRuta));
        request.setAttribute("ruta", ruta);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Ruta/frm_editar_ruta.jsp").forward(request, response);
    }
    
     private void modificarRuta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idRuta = Integer.parseInt(request.getParameter("id"));
        String nombreRuta = (request.getParameter("nombreRuta"));
        String descripcionRuta = (request.getParameter("descripRuta"));
        AR_admin_ruta ruta = new AR_admin_ruta(idRuta, nombreRuta, descripcionRuta);
        int registroModificado = new QueryAdminRutaDAO().actualizarRuta(ruta);
        
        PrintWriter out = response.getWriter();
        Gson gson = new GsonBuilder().serializeNulls().create();
        JsonObject myObj = new JsonObject();
        response.setContentType("application/json");
        JsonElement rutaed_obj = gson.toJsonTree(registroModificado);
        myObj.add("rs_rutaed", rutaed_obj);
        
        try {
            out.println(myObj.toString());
        } finally {
            out.close();
        }
    }
    
        private void crearRuta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreRuta = (request.getParameter("nombreRuta"));
        String descripcionRuta = (request.getParameter("descripRuta"));
        
        //Crearmo el objeto de cliente (modelo)
        AR_admin_ruta ruta = new AR_admin_ruta (1,nombreRuta, descripcionRuta);

        //Insertar en base de datos el objeto.
        int registroModificado = new QueryAdminRutaDAO().insertarRuta(ruta);
        System.out.println("registroModificados = " + registroModificado);

        PrintWriter out = response.getWriter();
        Gson gson = new GsonBuilder().serializeNulls().create();
        JsonObject myObj = new JsonObject();
        response.setContentType("application/json");
        JsonElement rutain_obj = gson.toJsonTree(registroModificado);
        myObj.add("rs_rutain", rutain_obj);
        
        try {
            out.println(myObj.toString());
        } finally {
            out.close();
        }
    } 
}
