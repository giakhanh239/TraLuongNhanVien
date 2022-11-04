/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Thanhvien;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author macbookpro
 */
public class NhanvienDAO extends DAO{

    public NhanvienDAO() {
        super();
    }
    
    public boolean kiemtraDangnhap(Thanhvien tv) {
        boolean kq = false;
        if (tv.getUsername().contains("true") || tv.getUsername().contains("=")
                || tv.getPassword().contains("true") || tv.getPassword().contains("=")) return false;

        String sql = "SELECT * FROM thanhvien WHERE username = ? AND password = ? ";

        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, tv.getUsername());
            cs.setString(2, tv.getPassword());
            ResultSet rs = cs.executeQuery();
            if (rs.next()) {
                tv.setId(rs.getInt("id"));
                tv.setTen(rs.getString("ten"));
                tv.setDiachi(rs.getString("diachi"));
                tv.setEmail(rs.getString("email"));
                tv.setDienthoai(rs.getString("dienthoai"));
                tv.setGhichu(rs.getString("ghichu"));
                
                kq=true ;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return kq;
    }
}
