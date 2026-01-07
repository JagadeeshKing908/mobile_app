package com.mobilesales.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mobilesales.config.DBConfig;

public class UserDAO {

    public void registerUser(String username, String email, String password) throws Exception {

        Connection con = DBConfig.getConnection();

        String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, email);
        ps.setString(3, password);

        ps.executeUpdate();
        con.close();
    }

    public boolean validateUser(String username, String password) throws Exception {

        Connection con = DBConfig.getConnection();

        String sql = "SELECT id FROM users WHERE username=? AND password=?";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, username);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        boolean exists = rs.next();

        con.close();
        return exists;
    }
}
