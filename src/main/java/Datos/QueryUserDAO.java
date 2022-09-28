/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

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
}
