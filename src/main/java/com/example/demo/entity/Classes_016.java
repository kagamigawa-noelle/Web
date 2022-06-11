package com.example.demo.entity;

public class Classes_016 {
    String id;
    String descript;
    String majorId;
    String date;
    String relation;
    String phone;
    int status;

    public Classes_016(String id, String descript, String majorId, String date, String relation, String phone, int status) {
        this.id = id;
        this.descript = descript;
        this.majorId = majorId;
        this.date = date;
        this.relation = relation;
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

    public String getMajorId() {
        return majorId;
    }

    public void setMajorId(String majorId) {
        this.majorId = majorId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
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
