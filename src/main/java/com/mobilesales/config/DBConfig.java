package com.mobilesales.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {

    private static final String URL =
        "jdbc:mysql://172.31.5.224:3306/mobilesales?useSSL=false&allowPublicKeyRetrieval=true";

    private static final String USER = "mobileuser";
    private static final String PASSWORD = "Mobile@123";

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
