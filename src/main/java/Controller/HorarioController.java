/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Datos.QueryAdminHorarioDAO;
import Datos.QueryAdminRutaDAO;
import Model.AR_admin_horario;
import Model.AR_admin_ruta;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet("/horario")
public class HorarioController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {                
        HttpSession sesion = request.getSession();
        String action = request.getParameter("accion");
        if(sesion.getAttribute("id") != null){
            if (action != null) {
                switch(action){
                    case "add":
                        this.frmCrearHorario(request, response);
                        break;
                    case "editar":
                        editarHorario(request, response);
                        break;    
                    default:
                        this.accionDefault(request, response);
                }
            }else{
                this.accionDefault(request, response);    
            }
        }else{
            this.redirectToIndex(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        if (action != null) {
            switch(action){
                
                case "modificar_horario":
                    //this.modificarHorario(request, response);
                    break;
                case "crear_horario":
                    this.crearHorario(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }   
        }else{
            this.accionDefault(request, response);
        }
        
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        List<AR_admin_horario> horarios = new QueryAdminHorarioDAO().consultarHorarios();
        System.out.println("horarios = " + horarios);
        request.setAttribute("horarios", horarios);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Horario/frm_admin_horario.jsp").forward(request, response);
    }
    
    private void editarHorario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idHorario = Integer.parseInt(request.getParameter("id"));
        AR_admin_horario horario = new QueryAdminHorarioDAO().findOneById(new AR_admin_horario(idHorario));
        request.setAttribute("horario", horario);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Horario/frm_editar_horario.jsp").forward(request, response);
    }
    
    private void frmCrearHorario(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
       //metodo para cargar el select de rutas
        List<AR_admin_ruta> rutas = new QueryAdminRutaDAO().consultarRutas();
        request.setAttribute("rutas", rutas);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Horario/frm_crear_horario.jsp").forward(request, response);
    }
    
    /* private void modificarHorario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idHorario = Integer.parseInt(request.getParameter("id"));
        Time horaHorario = (request.getParameter("horaHorario"));
        String jornadaHorario = (request.getParameter("jornadaHorario"));
        AR_admin_horario horario = new AR_admin_horario(idHorario, horaHorario,jornadaHorario);
        int registroModificado = new QueryAdminHorarioDAO().actualizarHorario(horario);
        
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
    }*/
    
    private void crearHorario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String horaHorario = request.getParameter("horaHorario");
        /*SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
        Date date;
        Time horaHorarioFinal = null;
        
        try {
            date = dateFormat.parse(horaHorario);
            horaHorarioFinal = new java.sql.Time(date.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }*/
        
        /*java.util.Date date=new java.util.Date();
        java.sql.Timestamp sqlTime=new java.sql.Timestamp(date.getTime());*/
        
        String jornadaHorario = request.getParameter("jornadaHorario");
        int facultadAreaHorario = Integer.parseInt(request.getParameter("facultadAreaHorario"));
        
        //Crearmo el objeto de cliente (modelo) 
        AR_admin_horario horario = new AR_admin_horario (horaHorario, jornadaHorario,facultadAreaHorario);

        //Insertar en base de datos el objeto.
        int registroCreado = new QueryAdminHorarioDAO().insertarHorario(horario);
        System.out.println("registroCreado = " + registroCreado);

        /*PrintWriter out = response.getWriter();
        Gson gson = new GsonBuilder().serializeNulls().create();
        JsonObject myObj = new JsonObject();
        response.setContentType("application/json");
        JsonElement horarioin_obj = gson.toJsonTree(registroCreado);
        myObj.add("rs_horarioin", horarioin_obj);
        
        try {
            out.println(myObj.toString());
        } finally {
            out.close();
        }*/
    } 
    
    private void redirectToIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.sendRedirect("index.jsp");
    }
}
