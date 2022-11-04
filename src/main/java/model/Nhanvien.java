/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author macbookpro
 */
public class Nhanvien {
    private Thanhvien ThanhvienId;
    private String vaitro;

    public Nhanvien() {
    }

    public Nhanvien(Thanhvien ThanhvienId, String vaitro) {
        this.ThanhvienId = ThanhvienId;
        this.vaitro = vaitro;
    }

    public Thanhvien getThanhvienId() {
        return ThanhvienId;
    }

    public void setThanhvienId(Thanhvien ThanhvienId) {
        this.ThanhvienId = ThanhvienId;
    }

    public String getVaitro() {
        return vaitro;
    }

    public void setVaitro(String vaitro) {
        this.vaitro = vaitro;
    }
    
    
}
