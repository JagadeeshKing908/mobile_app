package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.*;

public class UserDAO {

    public void register(String username, String password, String email) throws Exception {

        String hash = BCrypt.hashpw(password, BCrypt.gensalt());

        String sql = "INSERT INTO users(username,password,email) VALUES(?,?,?)";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, hash);
            ps.setString(3, email);
            ps.executeUpdate();
        }
    }

    public boolean login(String username, String password) throws Exception {

        String sql = "SELECT password FROM users WHERE username=?";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return BCrypt.checkpw(password, rs.getString("password"));
            }
        }
        return false;
    }
}
