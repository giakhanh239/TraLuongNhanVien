/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DAO.con;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import model.Tour;

/**
 *
 * @author macbookpro
 */
public class TourDAO extends DAO{

    public TourDAO() {
        super();
    }
    
    public ArrayList<Tour> getDSTour(String noiden, String ngaydi) throws ParseException {
        ArrayList<Tour> list = new ArrayList<>();
        String sql = "SELECT * FROM tour WHERE noiden LIKE ? AND ngaydi LIKE ?";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, noiden);
            java.util.Date utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(ngaydi);
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            cs.setDate(2, sqlDate);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setId(rs.getInt("id"));
                t.setTen(rs.getString("ten"));
                t.setNoixuatphat(rs.getString("noixuatphat"));
                t.setNoiden(rs.getString("noiden"));
                t.setLichtrinh(rs.getString("lichtrinh"));
                t.setMota(rs.getString("mota"));
                t.setNgaydi(rs.getDate("ngaydi"));
                t.setGiave(rs.getDouble("giave"));
                list.add(t);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return list;
    }
}
