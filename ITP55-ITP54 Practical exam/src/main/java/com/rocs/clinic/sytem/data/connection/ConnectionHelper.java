package com.rocs.clinic.sytem.data.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class
ConnectionHelper {

    public static final String URL = "jdbc:oracle:thin:@localhost:1521:rogate";
    public static final String ORACLE_DRIVER = "oracle.jdbc.driver.OracleDriver";
    public static final String USERNAME = "vra";
    public static final String PASSWORD = "Changeme0";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName(ORACLE_DRIVER);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Oracle JDBC Driver not found", e);
        }
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}