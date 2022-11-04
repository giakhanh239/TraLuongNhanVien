/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author macbookpro
 */
public class Ve {
    private int id;
    private int soluongve;
    private double tongtien;
    private Tour maTour;

    public Ve() {
    }

    public Ve(int id, int soluongve, double tongtien, Tour maTour) {
        this.id = id;
        this.soluongve = soluongve;
        this.tongtien = tongtien;
        this.maTour = maTour;
    }

    public Ve(int soluongve, double tongtien, Tour maTour) {
        this.id = id;
        this.soluongve = soluongve;
        this.tongtien = tongtien;
        this.maTour = maTour;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSoluongve() {
        return soluongve;
    }

    public void setSoluongve(int soluongve) {
        this.soluongve = soluongve;
    }

    public double getTongtien() {
        return tongtien;
    }

    public void setTongtien(double tongtien) {
        this.tongtien = tongtien;
    }

    public Tour getMaTour() {
        return maTour;
    }

    public void setMaTour(Tour maTour) {
        this.maTour = maTour;
    }
    
    
}
