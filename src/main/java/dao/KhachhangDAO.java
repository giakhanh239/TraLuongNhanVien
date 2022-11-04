/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DAO.con;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import model.*;

/**
 *
 * @author macbookpro
 */
public class KhachhangDAO extends DAO{

    public KhachhangDAO() {
        super();
    }
    
    public ArrayList<Khachhang> getDSKhachhang(String ten) {
        ArrayList<Khachhang> list = new ArrayList<>();
        String sql = "SELECT * FROM khachhang WHERE ten Like ?";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, ten);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                Khachhang kh = new Khachhang();
                kh.setId(rs.getInt("id"));
                kh.setTen(rs.getString("ten"));
                kh.setSoID(rs.getString("soID"));
                kh.setKieuID(rs.getString("kieuID"));
                kh.setDienthoai(rs.getString("dienthoai"));
                kh.setEmail(rs.getString("email"));
                kh.setDiachi(rs.getString("diachi"));
                list.add(kh);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return list;
    }
    
    public Khachhang getKhachhang(String ten) {
        Khachhang kh = new Khachhang();
        String sql = "SELECT * FROM khachhang WHERE ten Like ?";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, ten);
            ResultSet rs = cs.executeQuery();
            if (rs.next()) {
                kh.setId(rs.getInt("id"));
                kh.setTen(rs.getString("ten"));
                kh.setSoID(rs.getString("soID"));
                kh.setKieuID(rs.getString("kieuID"));
                kh.setDienthoai(rs.getString("dienthoai"));
                kh.setEmail(rs.getString("email"));
                kh.setDiachi(rs.getString("diachi"));
                
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return kh;
    }
}
