/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;

/**
 *
 * @author macbookpro
 */
public class Tour {
    private int id;
    private String ten;
    private String noixuatphat;
    private String noiden;
    private String lichtrinh;
    private String mota;
    private Date ngaydi;
    private double giave;

    public Tour() {
    }

    public Tour(int id, String ten, String noixuatphat, String noiden, String lichtrinh, String mota, String ngaydi, double giave) throws ParseException {
        this.id = id;
        this.ten = ten;
        this.noixuatphat = noixuatphat;
        this.noiden = noiden;
        this.lichtrinh = lichtrinh;
        this.mota = mota;
        
        java.util.Date utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(ngaydi);
        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
        this.ngaydi = sqlDate ;
        
        this.giave = giave;
    }

    public Tour(String ten, String noixuatphat, String noiden, String lichtrinh, String mota, Date ngaydi, double giave) {
        this.id = id;
        this.ten = ten;
        this.noixuatphat = noixuatphat;
        this.noiden = noiden;
        this.lichtrinh = lichtrinh;
        this.mota = mota;
        this.ngaydi = ngaydi;
        this.giave = giave;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getNoixuatphat() {
        return noixuatphat;
    }

    public void setNoixuatphat(String noixuatphat) {
        this.noixuatphat = noixuatphat;
    }

    public String getNoiden() {
        return noiden;
    }

    public void setNoiden(String noiden) {
        this.noiden = noiden;
    }

    public String getLichtrinh() {
        return lichtrinh;
    }

    public void setLichtrinh(String lichtrinh) {
        this.lichtrinh = lichtrinh;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public Date getNgaydi() {
        return ngaydi;
    }

    public void setNgaydi(Date ngaydi) {
        this.ngaydi = ngaydi;
    }

    public double getGiave() {
        return giave;
    }

    public void setGiave(double giave) {
        this.giave = giave;
    }
    
    
}
