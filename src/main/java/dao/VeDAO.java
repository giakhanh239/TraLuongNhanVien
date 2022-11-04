/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Ve;

/**
 *
 * @author macbookpro
 */
public class VeDAO extends DAO{

    public VeDAO() {
        super();
    }
    
    public boolean addVe(Ve ve){
        boolean kq = false;
        String sqlThem = "INSERT INTO ve(soluongve, tongtien, tourId) VALUES(?,?,?)";
        try{
            this.con.setAutoCommit(false);
            PreparedStatement psThem = con.prepareStatement(sqlThem);
            psThem.setInt(1, ve.getSoluongve());
            psThem.setDouble(2, ve.getTongtien());
            psThem.setInt(3, ve.getMaTour().getId());
            System.out.println(psThem);
            psThem.executeUpdate();

            this.con.commit();
            kq=true;
        }catch(Exception e){
            try{
                this.con.rollback();
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
            kq=false;
            e.printStackTrace();
        }finally{
            try{
                this.con.setAutoCommit(true);
            }catch(Exception ex){
                kq=false;
                ex.printStackTrace();
            }
        }
        return kq;
    }

    
}
