package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.*;

public class UserDAO {

    // REGISTER USER
    public boolean registerUser(String username, String password, String email) {
        String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);

            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // VALIDATE LOGIN
    public boolean validateUser(String username, String password) {
        String sql = "SELECT password FROM users WHERE username = ?";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("password").equals(password);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
