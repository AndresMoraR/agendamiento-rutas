/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Model.AR_admin_cupo;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

/**
 *
 * @author estfa
 */
public class QueryAdminCupoDAO {
    
    private static final String SQL_INSERT = "INSERT INTO ar_admin_cupo(funcionario_cupo, estudiante_cupo, total_cupo_cupo, cupo_extra_cupo, estado_cupo, id_usuario_creacion_cupo)"
        + " VALUES(?,?,?,?,?,?)";
    
    private static final String SQL_SELECT = "SELECT id_cupo, funcionario_cupo, estudiante_cupo, total_cupo_cupo, cupo_extra_cupo, estado_cupo, fecha_creacion_cupo, id_usuario_creacion_cupo"
        + " FROM ar_admin_cupo";
    
    private static final String SQL_UPDATE_STATUS = "UPDATE ar_admin_cupo SET estado_cupo=? WHERE id_cupo=?";
    
    private static final String SQL_UPDATE_CUPO = "UPDATE ar_admin_cupo SET total_cupo_cupo=?, funcionario_cupo=?, estudiante_cupo=?, cupo_extra_cupo=? WHERE id_cupo=?";
    
    private static final String SQL_SELECT_BY_ID = "SELECT funcionario_cupo, estudiante_cupo, total_cupo_cupo, cupo_extra_cupo FROM ar_admin_cupo WHERE id_cupo = ?";
    
    public List<AR_admin_cupo> consultarCupos() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        AR_admin_cupo cupo = null;
        List<AR_admin_cupo> cupos = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idCupo = rs.getInt("id_cupo");
                int funcionarioCupo = rs.getInt("funcionario_cupo");
                int estudianteCupo = rs.getInt("estudiante_cupo");
                int totalCupo = rs.getInt("total_cupo_cupo");
                int cupoExtra = rs.getInt("cupo_extra_cupo");
                boolean estadoCupo = rs.getBoolean("estado_cupo");
                Date fechaCreacionCupo = rs.getDate("fecha_creacion_cupo");
                int idUsuarioCreacionCupo = rs.getInt("id_usuario_creacion_cupo");
                cupo = new AR_admin_cupo(idCupo, funcionarioCupo, estudianteCupo, totalCupo, cupoExtra, estadoCupo, fechaCreacionCupo, idUsuarioCreacionCupo);
                cupos.add(cupo);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return cupos;
    }
    
    public int insertarCupo(AR_admin_cupo cupo){
        Connection conn = null;
        PreparedStatement stmt = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setInt(1, cupo.getFuncionarioCupo());
            stmt.setInt(2, cupo.getEstudianteCupo());
            stmt.setInt(3, cupo.getTotalCupo());
            stmt.setInt(4, cupo.getCupoExtra());
            stmt.setBoolean(5, true);
            //stmt.setInt(6, cupo.getIdUsuarioCreacionCupo());
            stmt.setInt(6, 1);
            rows = stmt.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public int actualizarEstado(AR_admin_cupo cupo){
        Connection conn = null;
        PreparedStatement stmt = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE_STATUS);
            stmt.setBoolean(1, cupo.getEstadoCupo());
            stmt.setInt(2, cupo.getIdCupo());
            
            rows = stmt.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public int actualizarCupo(AR_admin_cupo cupo){
        Connection conn = null;
        PreparedStatement stmt = null;        
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE_CUPO);
            stmt.setInt(1, cupo.getTotalCupo());
            stmt.setInt(2, cupo.getFuncionarioCupo());
            stmt.setInt(3, cupo.getEstudianteCupo());
            stmt.setInt(4, cupo.getCupoExtra());
            stmt.setInt(5, cupo.getIdCupo());
            
            rows = stmt.executeUpdate();            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public AR_admin_cupo findOneById(AR_admin_cupo cupo) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_BY_ID);
            stmt.setInt(1, cupo.getIdCupo());
            rs = stmt.executeQuery();
            rs.absolute(1); //POSICIONARSE EN EL PRIMER REGISTRO
           
            int funcionarioCupo = rs.getInt("funcionario_cupo");
            int estudianteCupo = rs.getInt("estudiante_cupo");
            int totalCupo = rs.getInt("total_cupo_cupo");
            int cupoExtra = rs.getInt("cupo_extra_cupo");
            
            cupo.setFuncionarioCupo(funcionarioCupo);
            cupo.setEstudianteCupo(estudianteCupo);
            cupo.setTotalCupo(totalCupo);
            cupo.setCupoExtra(cupoExtra);

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return cupo;
    }
}
