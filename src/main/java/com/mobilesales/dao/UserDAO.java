package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import java.sql.*;

public class UserDAO {

    public boolean validateUser(String email, String password) {
        try {
            Connection con = DBConfig.getConnection();
            PreparedStatement ps =
                con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            return rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean registerUser(String email, String password) {
        try {
            Connection con = DBConfig.getConnection();
            PreparedStatement ps =
                con.prepareStatement("INSERT INTO users(email,password) VALUES(?,?)");

            ps.setString(1, email);
            ps.setString(2, password);
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
