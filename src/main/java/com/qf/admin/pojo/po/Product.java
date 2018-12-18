package com.qf.admin.pojo.po;

/**
 * @param
 * @Author: SJW
 * @Time: 20:16 2018/12/17
 * @version: v1.0
 */
public class Product {
    private int pid;
    private String pname;
    private double price;
    private int number;
    private String pimage;
    private int cid;

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", price=" + price +
                ", number=" + number +
                ", pimage='" + pimage + '\'' +
                ", cid=" + cid +
                '}';
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }
}
