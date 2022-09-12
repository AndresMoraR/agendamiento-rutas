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
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jasypt.util.password.StrongPasswordEncryptor;

import javax.servlet.http.HttpSession;
  
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/**
 *
 * @author beamora
 */
@WebServlet("/user")
public class UserController extends HttpServlet {
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
        HttpSession sesion = request.getSession();
        String action = request.getParameter("accion");
        if("add_login".equals(action)){
            this.frmCrearUsuario(request, response);
        }else{
            if(sesion.getAttribute("id") != null){
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
            }else{
                this.redirectToIndex(request, response);
            }
        }                
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        String action = request.getParameter("accion");
        if(sesion.getAttribute("id") != null){
            if (action != null) {
                switch(action){
                    case "crear_usuario":
                        this.crearUsuario(request, response);
                        break;
                    default:
                        this.accionDefault(request, response);
                }
            }
        }else{
            this.redirectToIndex(request, response);
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
        
        //Creación de contraseña cifrada
        StrongPasswordEncryptor encryptor = new StrongPasswordEncryptor();
        String contraseña = encryptor.encryptPassword(request.getParameter("n_identificacion"));
        System.out.println("passEncrypted = " + contraseña);
               
        //Envio de correos a usaurio y administrador
        String titulo_email = "Usuario - Agendamiento de Rutas";
        String contenido_email_user = 
                "<b>Apreciado usuario, los datos de acceso a la aplicación son:</b></br>"+ 
                "<b>Usuario: </b>"+correo+"</br>"+
                "<b>Contraseña: </b>"+request.getParameter("n_identificacion")+"</br></br>";
        this.enviarCorreo(correo, titulo_email, contenido_email_user);
        
        String contenido_email_admin = 
                "<b>Apreciado usuario, tiene un usuario nuevo para cambio de rol:</b></br>"+
                "<b>Usuario: </b>"+correo+"</br></br>";
        //Cambiar correo de envio para ambiente productivo
        this.enviarCorreo(correo, titulo_email, contenido_email_admin);
        
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
    
    private void enviarCorreo(String to, String subject, String content){
    
        String from = "sistemas@unisanitas.edu.co"; 
        String host = "email-smtp.us-east-1.amazonaws.com";//or IP address  
  
        //Get the session object  
        Properties properties = System.getProperties();  
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.port", "587");  
        properties.setProperty("mail.smtp.starttls.enable", "true");
        
        //Session emailSession = Session.getInstance(properties);
        
        // Setup authentication, get session
       Session emailSession = Session.getInstance(properties,
            new javax.mail.Authenticator() {
               protected PasswordAuthentication getPasswordAuthentication() {
                  return new PasswordAuthentication(
                     "AKIAXNN6FNWZECW2BXFQ", "BL04kHcCf1+U3PkZBjjieBvJ/2WmZ8NZ+ZWGEv8f/bjg");
               }
            });
        
        try{  
            // Create a default MimeMessage object.
            Message message = new MimeMessage(emailSession);	
            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));	
            // Set To: header field of the header.
            message.setRecipients(Message.RecipientType.TO,
               InternetAddress.parse(to));	
            // Set Subject: header field
            message.setSubject(subject);	
            // Now set the actual message
            message.setContent(content, "text/html");
            // Send message
            Transport.send(message);
            System.out.println("Sent message successfully....");
        }catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
    
    private void redirectToIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.sendRedirect("index.jsp");
    }
}
