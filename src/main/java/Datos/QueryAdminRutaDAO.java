/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Model.AR_admin_ruta;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author OSIADMIN
 */
public class QueryAdminRutaDAO {
    
    private static final String SQL_SELECT = "SELECT id_ruta, nombre_ruta, descripcion_ruta FROM ar_admin_ruta ";
    private static final String SQL_INSERT = "INSERT INTO ar_admin_ruta (nombre_ruta, descripcion_ruta)VALUES (?,?)";
    
    
    public List<AR_admin_ruta> consultarRutas(){
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        AR_admin_ruta ruta= null;
        List<AR_admin_ruta> rutas = new ArrayList<>();
        
        try {
            
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id_Ruta = rs.getInt("id_ruta");
                String nombre_Ruta = rs.getString("nombre_ruta");
                String descripcion_Ruta = rs.getString("descripcion_ruta");
                ruta = new AR_admin_ruta(id_Ruta, nombre_Ruta, descripcion_Ruta);
                rutas.add(ruta);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return rutas;
        
    }
    
}
