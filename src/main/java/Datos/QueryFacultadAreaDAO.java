/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Model.AR_facultad_area;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author estfa
 */
public class QueryFacultadAreaDAO {
    private static final String SQL_SELECT = "SELECT id_facultad_area, nombre_facultad_area FROM ahr_facultad_area";
    
    public List<AR_facultad_area> consultarFacultadArea() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        AR_facultad_area fac_ar = null;
        List<AR_facultad_area> fac_areas = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idFacultadArea = rs.getInt("id_facultad_area");
                String nombreFacultadArea = rs.getString("nombre_facultad_area");
                fac_ar = new AR_facultad_area(idFacultadArea, nombreFacultadArea);
                fac_areas.add(fac_ar);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return fac_areas;
    }
}
