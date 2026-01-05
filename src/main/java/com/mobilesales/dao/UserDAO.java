package com.mobilesales.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mobilesales.config.DBConfig;

public class UserDAO {

    public static String getPasswordByUsername(String username) throws Exception {
        String sql = "SELECT password FROM users WHERE username=?";
        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("password");
            }
        }
        return null;
    }
}
