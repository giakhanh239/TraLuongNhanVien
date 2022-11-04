/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author macbookpro
 */
public class Khachhang {
    private int id;
    private String ten;
    private String soID;
    private String kieuID;
    private String dienthoai;
    private String email;
    private String diachi;

    public Khachhang() {
    }

    public Khachhang(int id, String ten, String soID, String kieuID, String dienthoai, String email, String diachi) {
        this.id = id;
        this.ten = ten;
        this.soID = soID;
        this.kieuID = kieuID;
        this.dienthoai = dienthoai;
        this.email = email;
        this.diachi = diachi;
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

    public String getSoID() {
        return soID;
    }

    public void setSoID(String soID) {
        this.soID = soID;
    }

    public String getKieuID() {
        return kieuID;
    }

    public void setKieuID(String kieuID) {
        this.kieuID = kieuID;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    @Override
    public String toString() {
        return "Khachhang{" + "ten=" + ten + ", soID=" + soID + ", kieuID=" + kieuID + ", dienthoai=" + dienthoai + ", email=" + email + ", diachi=" + diachi + '}';
    }
    
    
}
