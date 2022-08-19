/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Model.AR_user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author estfa
 */
public class QueryUserDAO {
    
    private static final String SQL_INSERT = 
          "INSERT INTO ar_registro_usuario (nombres_usuario, apellidos_usuario, numero_identificacion_usuario, correo_usuario,"
        + " password_usuario, id_facultad_area_usuario, estado_usuario, id_rol_usuario) "
        + " VALUES (?,?,?,?,?,?,?,?)";
    
    public int insertarUser(AR_user user){
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
            stmt.setInt(8, 1);
            rows = stmt.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
}
