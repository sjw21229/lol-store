package com.qf.admin.pojo.po;


import java.util.Date;

public class News {
    private int wid;
    private double price;
    private String updataStamp;
    private String category;
    private String pimage;
    private String pdesc;
    private String pname;

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getUpdataStamp() {
        return updataStamp;
    }

    public void setUpdataStamp(String updataStamp) {
        this.updataStamp = updataStamp;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    @Override
    public String toString() {
        return "News{" +
                "wid=" + wid +
                ", price=" + price +
                ", updataStamp='" + updataStamp + '\'' +
                ", category='" + category + '\'' +
                ", pimage='" + pimage + '\'' +
                ", pdesc='" + pdesc + '\'' +
                ", pname='" + pname + '\'' +
                '}';
    }
}
