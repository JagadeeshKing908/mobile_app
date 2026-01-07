package com.mobilesales.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConfig {

    private static final String URL = "jdbc:mysql://172.31.13.98:3306/mobilesales";
    private static final String USER = "mobileuser";
    private static final String PASS = "Mobile@123";

    static {
        try {
            // Load driver explicitly
            Class.forName("com.mysql.cj.jdbc.Driver"); // For MySQL
            // or Class.forName("org.mariadb.jdbc.Driver"); for MariaDB
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
