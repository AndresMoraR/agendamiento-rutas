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

/**
 *
 * @author beamora
 */
public class QueryLoginDAO {
    
    private static final String SQL_SELECT = "SELECT nombres_usuario, numero_identificacion_usuario, correo_usuario, password_usuario, id_rol_usuario"
        + " FROM ar_registro_usuario WHERE numero_identificacion_usuario = ? and correo_usuario = ?";
    
    public AR_user findOneByIdEmail(AR_user user) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            stmt.setInt(1, user.getIdentificacion());
            stmt.setString(2, user.getCorreo());
            rs = stmt.executeQuery();
            rs.absolute(1); //POSICIONARSE EN EL PRIMER REGISTRO
           
            int numeroIdUsuario = rs.getInt("numero_identificacion_usuario");
            String correoUsuario = rs.getString("correo_usuario");
            String passwordUsuario = rs.getString("password_usuario");
            int idRolUsuario = rs.getInt("id_rol_usuario");
            String nombresUsuario = rs.getString("nombres_usuario");
            
            user.setIdentificacion(numeroIdUsuario);
            user.setCorreo(correoUsuario);
            user.setPassword(passwordUsuario);
            user.setRol(idRolUsuario);
            user.setNombres(nombresUsuario);

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return user;
    }    
}
