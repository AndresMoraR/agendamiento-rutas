/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Model.AR_admin_horario;
import com.mysql.cj.MysqlType;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;


/**
 *
 * @author OSIADMIN
 */
public class QueryAdminHorarioDAO {
    
    private static final String SQL_SELECT = "SELECT id_horario, hora_horario, jornada_horario,fecha_creacion_horario, id_usuario_creacion_horario, "
            + " id_ruta_horario, ar_admin_ruta.nombre_ruta as ruta FROM ar_admin_horario INNER JOIN ar_admin_ruta ON ar_admin_ruta.id_ruta = ar_admin_horario.id_ruta_horario";
    
    private static final String SQL_INSERT = "INSERT INTO ar_admin_horario (hora_horario, jornada_horario, id_usuario_creacion_horario, id_ruta_horario)VALUES(?,?,?,?)";
    
    private static final String SQL_UPDATE = "UPDATE ar_admin_horario SET hora_horario, jornada_horario WHERE id_horario=?";
    
    private static final String SQL_SELECT_BY_ID = "SELECT hora_horario, jornada_horario, id_ruta_horario FROM ar_admin_ruta WHERE id_horario = ?";
    
    public List<AR_admin_horario> consultarHorarios() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        AR_admin_horario horario = null;
        List<AR_admin_horario> horarios = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
                int idHorario = rs.getInt("id_horario");
                //Time horaHorario = rs.getTime("hora_horario");
                String horaHorario = rs.getString("hora_horario");
                String jornadaHorario = rs.getString("jornada_horario");
                Date fechaCreacionHorario = rs.getDate("fecha_creacion_horario");
                int idUsuarioCreacionHorario = rs.getInt("id_usuario_creacion_horario");
                int idRutaHorario = rs.getInt("id_usuario_creacion_horario");
                String nombreRuta = rs.getString("ruta");
                horario = new AR_admin_horario (idHorario, horaHorario, jornadaHorario, fechaCreacionHorario, idUsuarioCreacionHorario, idRutaHorario, nombreRuta);
                horarios.add(horario);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return horarios;
    }
    
     public int actualizarHorario(AR_admin_horario horario){
        Connection conn = null;
        PreparedStatement ps = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_UPDATE);
            ps.setString(1, horario.getHora_horario());
            ps.setString(2, horario.getJornada_horario());
            ps.setInt(3, horario.getId_ruta_horario());
            
            
            rows = ps.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public AR_admin_horario findOneById(AR_admin_horario horario) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_SELECT_BY_ID);
            ps.setInt(1, horario.getId_horario());
            rs = ps.executeQuery();
            rs.absolute(1); //POSICIONARSE EN EL PRIMER REGISTRO
           
            //Time horaHorario = rs.getTime("hora_horario");
            String horaHorario = rs.getString("hora_horario");
            String jornadaHorario = rs.getString("jornada_horario");
            int idRutaHorario = rs.getInt("id_ruta_horario");
            
            horario.setHora_horario(horaHorario);
            horario.setJornada_horario(jornadaHorario);
            horario.setId_ruta_horario(idRutaHorario);
            

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return horario;
    }
    
    public int insertarHorario( AR_admin_horario horario) {
        Connection conn = null;
        PreparedStatement ps = null;
        int rows = 0;
        
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_INSERT);
            ps.setString(1, horario.getHora_horario());     
            ps.setString(2, horario.getJornada_horario());
            ps.setInt(3, 1);
            ps.setInt(4, horario.getId_ruta_horario());
              
            rows = ps.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return rows;
        
    }
    
}
