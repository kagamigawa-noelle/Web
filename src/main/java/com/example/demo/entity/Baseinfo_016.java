package com.example.demo.entity;

public class Baseinfo_016 {
    String projet;
    String descriptiom;
    String value;
    String img;
    int status;

    public Baseinfo_016(String projet, String descriptiom, String value, String img, int status) {
        this.projet = projet;
        this.descriptiom = descriptiom;
        this.value = value;
        this.img = img;
        this.status = status;
    }

    public String getProjet() {
        return projet;
    }

    public void setProjet(String projet) {
        this.projet = projet;
    }

    public String getDescriptiom() {
        return descriptiom;
    }

    public void setDescriptiom(String descriptiom) {
        this.descriptiom = descriptiom;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
