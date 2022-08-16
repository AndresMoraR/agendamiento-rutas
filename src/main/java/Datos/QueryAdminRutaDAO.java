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
    private static final String SQL_UPDATE_RUTA = "UPDATE ar_admin_ruta SET nombre_ruta=?, descripcion_ruta=? WHERE id_ruta=?";
    private static final String SQL_SELECT_BY_ID = "SELECT nombre_ruta, descripcion_ruta FROM ar_admin_ruta WHERE id_ruta = ?";
    
    
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
    
    public int actualizarRuta(AR_admin_ruta ruta){
        Connection conn = null;
        PreparedStatement ps = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_UPDATE_RUTA);
            ps.setString(1, ruta.getNombre_ruta());
            ps.setString(2, ruta.getDescripcion_ruta());
            ps.setInt(3, ruta.getId_ruta());
            
            
            rows = ps.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public AR_admin_ruta findOneById(AR_admin_ruta ruta) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_SELECT_BY_ID);
            ps.setInt(1, ruta.getId_ruta());
            rs = ps.executeQuery();
            rs.absolute(1); //POSICIONARSE EN EL PRIMER REGISTRO
           
            String nombre_ruta = rs.getString("nombre_ruta");
            String descripcion_ruta = rs.getString("descripcion_ruta");
            
            ruta.setNombre_ruta(nombre_ruta);
            ruta.setDescripcion_ruta(descripcion_ruta);
            

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(conn);
        }
        return ruta;
    }
    
    public int insertarRuta( AR_admin_ruta ruta) {
        
        Connection conn = null;
        PreparedStatement ps = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            ps = conn.prepareStatement(SQL_INSERT);
            ps.setString(1, ruta.getNombre_ruta());
            ps.setString(2, ruta.getDescripcion_ruta());
            //stmt.setInt(6, cupo.getIdUsuarioCreacionCupo());
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
