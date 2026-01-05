package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    // REGISTER USER
    public boolean registerUser(String username, String password) {

        String sql = "INSERT INTO users (username, password) VALUES (?, ?)";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // GET PASSWORD FOR LOGIN
    public String getPasswordByUsername(String username) {

        String sql = "SELECT password FROM users WHERE username = ?";
        String password = null;

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                password = rs.getString("password");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return password;
    }
}
