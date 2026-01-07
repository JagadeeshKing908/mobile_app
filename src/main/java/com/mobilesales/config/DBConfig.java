package com.mobilesales.config;

import java.sql.*;

public class DBConfig {

    private static final String URL = "jdbc:mysql://172.31.5.224:3306/mobilestore";
    private static final String USER = "mobileuser";
    private static final String PASSWORD = "Mobile@123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
