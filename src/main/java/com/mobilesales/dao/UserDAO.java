package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    // LOGIN USER
    public boolean login(String username, String password) {
        String sql = "SELECT password FROM users WHERE LOWER(username) = LOWER(?)";
        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username.trim()); // trim to avoid spaces
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("password").trim(); // trim db value
                return dbPassword.equals(password.trim()); // compare trimmed values
            } else {
                System.out.println("Username not found: " + username);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error during login: " + e.getMessage());
        }
        return false;
    }
}
