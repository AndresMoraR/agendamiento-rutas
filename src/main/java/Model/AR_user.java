/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author estfa
 */
public class AR_user {
    private int idUser;
    private String nombres;
    private String apellidos;
    private int identificacion;
    private String correo;
    private String password;
    private int facultad;
    private Boolean estado;
    private Date fecha_creacion;
    private int rol;

    public AR_user(String nombres, String apellidos, int identificacion, String correo, String password, int facultad, Boolean estado, int rol) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.identificacion = identificacion;
        this.correo = correo;
        this.password = password;
        this.facultad = facultad;
        this.estado = estado;
        this.rol = rol;
    }

    public AR_user(int identificacion, String correo) {
        this.identificacion = identificacion;
        this.correo = correo;
    }

    public AR_user(int idUser, String nombresUsuario, String apellidosUsuario, int numIdUsuario, String correoUsuario, Boolean estadoUsuario, Date fechaCreacionUsuario) {
        this.idUser = idUser;
        this.nombres = nombresUsuario;
        this.apellidos = apellidosUsuario;
        this.identificacion = numIdUsuario;
        this.correo = correoUsuario;
        this.estado = estadoUsuario;
        this.fecha_creacion = fechaCreacionUsuario;
    }
    
    public AR_user(int idUser) {
        this.idUser = idUser;
    }

    /*public AR_user(String nombres, String apellidos, int n_identificacion, String correo, int facultad, int rol) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.identificacion = n_identificacion;
        this.correo = correo;
        this.facultad = facultad;
        this.rol = rol;        
    }*/

    public AR_user(int idUser, String nombres, String apellidos, int n_identificacion, String correo, int facultad, int rol) {
        this.idUser = idUser;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.identificacion = n_identificacion;
        this.correo = correo;
        this.facultad = facultad;
        this.rol = rol;
    }

    public AR_user(int idUser, boolean estadoUsuario) {
       this.idUser = idUser;
       this.estado = estadoUsuario;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(int identificacion) {
        this.identificacion = identificacion;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getFacultad() {
        return facultad;
    }

    public void setFacultad(int facultad) {
        this.facultad = facultad;
    }

    public Boolean getEstado() {
        return estado;
    }

    public void setEstado(Boolean estado) {
        this.estado = estado;
    }

    public Date getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(Date fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }
    
    
    
    
}
