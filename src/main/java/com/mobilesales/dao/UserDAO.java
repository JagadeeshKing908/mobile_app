package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.*;

public class UserDAO {

    // REGISTER USER
    public void registerUser(String username, String password, String email) throws Exception {
        String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);   // Plain for now (OK for learning)
            ps.setString(3, email);

            ps.executeUpdate();
        }
    }

    // LOGIN USER
    public boolean login(String username, String password) throws Exception {
        String sql = "SELECT password FROM users WHERE username = ?";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("password").equals(password);
            }
        }
        return false;
    }
}
