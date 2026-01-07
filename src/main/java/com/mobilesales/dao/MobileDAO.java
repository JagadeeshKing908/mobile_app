package com.mobilesales.dao;

import com.mobilesales.config.DBConfig;
import com.mobilesales.model.Mobile;

import java.sql.*;
import java.util.*;

public class MobileDAO {

    public List<Mobile> getAllMobiles() throws Exception {

        List<Mobile> list = new ArrayList<>();
        String sql = "SELECT * FROM mobiles";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Mobile m = new Mobile();
                m.setId(rs.getInt("id"));
                m.setName(rs.getString("name"));
                m.setBrand(rs.getString("brand"));
                m.setRam(rs.getString("ram"));
                m.setStorage(rs.getString("storage"));
                m.setCamera(rs.getString("camera"));
                m.setBattery(rs.getString("battery"));
                m.setPrice(rs.getInt("price"));
                m.setImage(rs.getString("image"));
                list.add(m);
            }
        }
        return list;
    }

    public Mobile getMobileById(int id) throws Exception {

        String sql = "SELECT * FROM mobiles WHERE id=?";

        try (Connection con = DBConfig.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Mobile m = new Mobile();
                m.setId(id);
                m.setName(rs.getString("name"));
                m.setBrand(rs.getString("brand"));
                m.setRam(rs.getString("ram"));
                m.setStorage(rs.getString("storage"));
                m.setCamera(rs.getString("camera"));
                m.setBattery(rs.getString("battery"));
                m.setPrice(rs.getInt("price"));
                m.setImage(rs.getString("image"));
                return m;
            }
        }
        return null;
    }
}
