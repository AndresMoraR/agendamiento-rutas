/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import java.sql.*;
import javax.sql.*;
import org.apache.commons.dbcp2.BasicDataSource;

/**
 *
 * @author Andres Mora CREADA LA CONEXION CON UN POOL DE CONEXIONES
 */
public class Conexion {
    
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/agendar_rutasv5?useLegacyDatetimeCode=false&serverTimezone=UTC";
    //?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "123456"; 
    private static BasicDataSource dataSource;

    public static DataSource getDataSource() {
        
        if (dataSource == null) {
            dataSource = new BasicDataSource();
            dataSource.setDriverClassName("com.mysql.jdbc.Driver");
            dataSource.setUrl(JDBC_URL);
            dataSource.setUsername(JDBC_USER);
            dataSource.setPassword(JDBC_PASSWORD);
            dataSource.setInitialSize(50);
        }
        return dataSource;
    }

    public static Connection getConnection() throws SQLException {        
        return getDataSource().getConnection();
    }

    public static void close(ResultSet rs) {
        try {
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public static void close(PreparedStatement stmt) {
        try {
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public static void close(Connection conn) {
        try {
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }
}