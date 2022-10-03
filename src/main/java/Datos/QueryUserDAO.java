/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Model.AR_rol;
import Model.AR_user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 *
 * @author estfa
 */
public class QueryUserDAO {
    
    private static final String SQL_INSERT = 
        "INSERT INTO ar_registro_usuario (nombres_usuario, apellidos_usuario, numero_identificacion_usuario, correo_usuario,"
        + " password_usuario, id_facultad_area_usuario, estado_usuario, id_rol_usuario) "
        + " VALUES (?,?,?,?,?,?,?,?)";
    
    private static final String SQL_SELECT =
        "select aru.id_usuario, aru.nombres_usuario, aru.apellidos_usuario, aru.numero_identificacion_usuario, "
        + "aru.correo_usuario, aru.estado_usuario, aru.fecha_creacion_usuario from ar_registro_usuario aru";
    
    private static final String SQL_SELECT_BY_ID = 
        "select aru.nombres_usuario, aru.apellidos_usuario, aru.numero_identificacion_usuario, "
        + "aru.correo_usuario, aru.id_facultad_area_usuario, aru.id_rol_usuario from ar_registro_usuario aru WHERE aru.id_usuario =?";
    
    private static final String SQL_SELECT_ROLES =
        "select id_rol, nombre_rol from ar_rol";
    
    private static final String SQL_UPDATE =
        "UPDATE ar_registro_usuario aru SET aru.nombres_usuario=?, aru.apellidos_usuario=?, aru.numero_identificacion_usuario=?, "
        + "aru.correo_usuario=?, aru.id_facultad_area_usuario=?, aru.id_rol_usuario=? WHERE aru.id_usuario =?";
    
    private static final String SQL_UPDATE_STATUS = "UPDATE ar_registro_usuario SET estado_usuario=? WHERE id_usuario=?";
    
    public int actualizarEstado(AR_user user){
        Connection conn = null;
        PreparedStatement stmt = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE_STATUS);
            stmt.setBoolean(1, user.getEstado());
            stmt.setInt(2, user.getIdUser());
            
            rows = stmt.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public int insertarUsuario(AR_user user){
        Connection conn = null;
        PreparedStatement stmt = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, user.getNombres());
            stmt.setString(2, user.getApellidos());
            stmt.setInt(3, user.getIdentificacion());
            stmt.setString(4, user.getCorreo());
            stmt.setString(5, user.getPassword());
            stmt.setInt(6, user.getFacultad());
            stmt.setBoolean(7, user.getEstado());
            stmt.setInt(8, user.getRol());
            rows = stmt.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public List<AR_user> consultarUsuarios() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        AR_user user = null;
        List<AR_user> users = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idUser = rs.getInt("id_usuario");
                String nombresUsuario = rs.getString("nombres_usuario");
                String apellidosUsuario = rs.getString("apellidos_usuario");
                int numIdUsuario = rs.getInt("numero_identificacion_usuario");
                String correoUsuario = rs.getString("correo_usuario");
                boolean estadoUsuario = rs.getBoolean("estado_usuario");
                Date fechaCreacionUsuario = rs.getDate("fecha_creacion_usuario");
                user = new AR_user(idUser, nombresUsuario, apellidosUsuario, numIdUsuario, correoUsuario, estadoUsuario, fechaCreacionUsuario);
                users.add(user);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return users;
    }
    
    public AR_user findOneById(AR_user user){
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_SELECT_BY_ID);
            ps.setInt(1, user.getIdUser());
            rs = ps.executeQuery();
            rs.absolute(1); //POSICIONARSE EN EL PRIMER REGISTRO
                       
            String nombresUsuario = rs.getString("nombres_usuario");
            String apellidosUsuario = rs.getString("apellidos_usuario");
            int numeroIdUsuario = rs.getInt("numero_identificacion_usuario");
            String correoUsuario = rs.getString("correo_usuario");
            int idFacultadAreaUsuario = rs.getInt("id_facultad_area_usuario");
            int idRolUsuario = rs.getInt("id_rol_usuario");           
            
            user.setNombres(nombresUsuario);
            user.setApellidos(apellidosUsuario);
            user.setIdentificacion(numeroIdUsuario);
            user.setCorreo(correoUsuario);
            user.setFacultad(idFacultadAreaUsuario);
            user.setRol(idRolUsuario);

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return user;
    }
    
    public List<AR_rol> consultarRoles() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        AR_rol rol = null;
        List<AR_rol> roles = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_ROLES);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idRol = rs.getInt("id_rol");
                String nombreRol = rs.getString("nombre_rol");
                rol = new AR_rol(idRol, nombreRol);
                roles.add(rol);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return roles;
    }
    
    public int actualizarUsuario(AR_user user){
        Connection conn = null;
        PreparedStatement ps = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_UPDATE);
            ps.setString(1, user.getNombres());
            ps.setString(2, user.getApellidos());
            ps.setInt(3, user.getIdentificacion());   
            ps.setString(4, user.getCorreo());
            ps.setInt(5, user.getFacultad());
            ps.setInt(6, user.getRol());
            ps.setInt(7, user.getIdUser());
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
