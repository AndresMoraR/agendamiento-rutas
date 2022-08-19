/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Datos.QueryUserDAO;
import Datos.QueryFacultadAreaDAO;
import Model.AR_user;
import Model.AR_facultad_area;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Base64;    
import javax.crypto.Cipher;  
import javax.crypto.KeyGenerator;   
import javax.crypto.SecretKey;
import org.jasypt.util.password.StrongPasswordEncryptor;

/**
 *
 * @author beamora
 */
@WebServlet("/user")
public class UserController extends HttpServlet {
    
    static Cipher cipher;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
        String action = request.getParameter("accion");
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
        String action = request.getParameter("accion");
        if (action != null) {
            switch(action){
                case "crear_usuario":
                    this.crearUsuario(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        }
    }
    
    private void frmCrearUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<AR_facultad_area> facul_areas = new QueryFacultadAreaDAO().consultarFacultadArea();
        request.setAttribute("facul_areas", facul_areas);
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Usuario/frm_registro_usuario.jsp").forward(request, response);
    }
    
    private void crearUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        int n_identificacion = Integer.parseInt(request.getParameter("n_identificacion"));
        String correo = request.getParameter("correo");
        int facultad = Integer.parseInt(request.getParameter("facultad"));
        
        StrongPasswordEncryptor encryptor = new StrongPasswordEncryptor();
        String contraseña = encryptor.encryptPassword(request.getParameter("n_identificacion"));
        System.out.println("passEncrypted = " + contraseña);
                               
        //Crear el objeto de user (modelo)
        AR_user user = new AR_user(nombres, apellidos, n_identificacion, correo, contraseña, facultad, true, 3);

        //Insertar en base de datos el objeto.
        int registroCreado = new QueryUserDAO().insertarUser(user);
        System.out.println("registroCreado = " + registroCreado);

        PrintWriter out = response.getWriter();
        Gson gson = new GsonBuilder().serializeNulls().create();
        JsonObject myObj = new JsonObject();
        response.setContentType("application/json");
        JsonElement userins_obj = gson.toJsonTree(registroCreado);
        myObj.add("rs_userins_obj", userins_obj);
        
        try {
            out.println(myObj.toString());
        } finally {
            out.close();
        }
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        request.getRequestDispatcher("/WEB-INF/Vista/Vista_Usuario/frm_admin_usuario.jsp").forward(request, response);
    }
    
}
