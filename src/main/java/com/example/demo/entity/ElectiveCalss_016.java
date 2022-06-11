package com.example.demo.entity;

public class ElectiveCalss_016 {
    String id;
    String descript;
    String username;
    String phone;
    int status;

    public ElectiveCalss_016(String id, String descript, String username, String phone, int status) {
        this.id = id;
        this.descript = descript;
        this.username = username;
        this.phone = phone;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
