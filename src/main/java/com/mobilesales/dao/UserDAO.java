package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.*;

public class UserDAO {

    // LOGIN (already used)
    public String login(String username, String password) throws Exception {
        Connection con = DBConfig.getConnection();
        PreparedStatement ps =
            con.prepareStatement("SELECT role FROM users WHERE username=? AND password=?");

        ps.setString(1, username);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return rs.getString("role");
        }
        return null;
    }

    // ✅ REGISTER USER (THIS WAS MISSING)
    public boolean registerUser(String username, String password) throws Exception {
        Connection con = DBConfig.getConnection();
        PreparedStatement ps =
            con.prepareStatement(
                "INSERT INTO users(username, password, role) VALUES(?,?,?)"
            );

        ps.setString(1, username);
        ps.setString(2, password);
        ps.setString(3, "USER");

        return ps.executeUpdate() > 0;
    }
}
