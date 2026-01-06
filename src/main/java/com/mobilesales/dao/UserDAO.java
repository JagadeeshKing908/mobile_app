package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.*;

public class UserDAO {

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
}
