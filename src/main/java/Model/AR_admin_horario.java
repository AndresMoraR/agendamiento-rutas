/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author OSIADMIN
 */
public class AR_admin_horario {
    
    //Atributos
    
    private int id_horario;
    private String hora_horario;
    private String jornada_horario;
    private Date fecha_creacion_horario;
    private int id_usuario_creacion_horario;
    private int id_ruta_horario;
    
    //Atributo del INNER
    private String nombre_ruta;
    
    public AR_admin_horario ( int idHorario, String horaHorario, String jornadaHorario, Date fechaCreacionHorario, int idUsuarioCreacion, int idRutaHorario, String nombreRuta ){
        
        this.id_horario = idHorario;
        this.hora_horario = horaHorario;
        this.jornada_horario = jornadaHorario;
        this.fecha_creacion_horario = fechaCreacionHorario;
        this.id_usuario_creacion_horario = idUsuarioCreacion;
        this.id_ruta_horario = idRutaHorario;
        
        this.nombre_ruta= nombreRuta;

    }

    public AR_admin_horario(int idHorario, String horaHorario, String jornadaHorario,/* int idUsuarioCreacion,*/ int idRutaHorario){
        
        this.id_horario = idHorario;
        this.hora_horario = horaHorario;
        this.jornada_horario = jornadaHorario;
       // this.id_usuario_creacion_horario = idUsuarioCreacion;
        this.id_ruta_horario = idRutaHorario;
    }
    
    public AR_admin_horario(String horaHorario, String jornadaHorario,/* int idUsuarioCreacion,*/ int idRutaHorario){
        
        this.hora_horario = horaHorario;
        this.jornada_horario = jornadaHorario;
       // this.id_usuario_creacion_horario = idUsuarioCreacion;
        this.id_ruta_horario = idRutaHorario;
    }
    
    
    public String getNombre_ruta() {
        return nombre_ruta;
    }

    public void setNombre_ruta(String nombre_ruta) {
        this.nombre_ruta = nombre_ruta;
    }
    
    public AR_admin_horario(int idHorario){
        
        this.id_horario = idHorario;
    
    }

    public int getId_horario() {
        return id_horario;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }

    public String getHora_horario() {
        return hora_horario;
    }

    public void setHora_horario(String hora_horario) {
        this.hora_horario = hora_horario;
    }

    public String getJornada_horario() {
        return jornada_horario;
    }

    public void setJornada_horario(String jornada_horario) {
        this.jornada_horario = jornada_horario;
    }

    public Date getFecha_creacion_horario() {
        return fecha_creacion_horario;
    }

    public void setFecha_creacion_horario(Date fecha_creacion_horario) {
        this.fecha_creacion_horario = fecha_creacion_horario;
    }

    public int getId_usuario_creacion_horario() {
        return id_usuario_creacion_horario;
    }

    public void setId_usuario_creacion_horario(int id_usuario_creacion_horario) {
        this.id_usuario_creacion_horario = id_usuario_creacion_horario;
    }

    public int getId_ruta_horario() {
        return id_ruta_horario;
    }

    public void setId_ruta_horario(int id_ruta_horario) {
        this.id_ruta_horario = id_ruta_horario;
    }
    
    
}
