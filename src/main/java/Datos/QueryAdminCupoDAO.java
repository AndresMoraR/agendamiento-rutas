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

/**
 *
 * @author estfa
 */
public class QueryAdminCupoDAO {
    
    private static final String SQL_INSERT = "INSERT INTO ahr_admin_cupo(funcionario_cupo, estudiante_cupo, total_cupo_cupo, cupo_extra_cupo, estado_cupo, fecha_creacion_cupo, id_usuario_creacion_cupo)"
        + " VALUES(?,?,?,?,?,?,?)";
    
    private static final String SQL_SELECT = "SELECT id_cupo, funcionario_cupo, estudiante_cupo, total_cupo_cupo, cupo_extra_cupo, estado_cupo, fecha_creacion_cupo, id_usuario_creacion_cupo"
        + " FROM ahr_admin_cupo";
    
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
            stmt.setBoolean(5, cupo.getEstadoCupo());            
            stmt.setDate(6, (Date) cupo.getFechaCreacionCupo());
            stmt.setInt(7, cupo.getIdUsuarioCreacionCupo());
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
