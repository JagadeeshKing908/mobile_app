package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import com.mobilesales.util.PasswordUtil;
import java.sql.*;

public class UserDAO {

    public boolean validateUser(String email, String password) {
        String sql = "SELECT password FROM users WHERE email=?";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return PasswordUtil.verifyPassword(password, rs.getString("password"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean registerUser(String email, String password) {
        String sql = "INSERT INTO users(email, password) VALUES (?, ?)";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);
            ps.setString(2, PasswordUtil.hashPassword(password));
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
