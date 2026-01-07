package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    // REGISTER USER
    public void registerUser(String username, String password, String email) {
        String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password); // TODO: Hash password for production
            ps.setString(3, email);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error registering user: " + e.getMessage());
        }
    }

    // LOGIN USER
    public boolean login(String username, String password) {
        String sql = "SELECT password FROM users WHERE username = ?";
        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("password");
                return dbPassword.equals(password);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error during login: " + e.getMessage());
        }
        return false;
    }
}
