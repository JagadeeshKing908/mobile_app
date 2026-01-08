package com.mobilesales.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {

    private static final String URL =
        "jdbc:mysql://172.31.13.98:3306/mobilestore?useSSL=false&serverTimezone=UTC";
    private static final String USER = "mobileuser";
    private static final String PASSWORD = "Mobile@123";

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
