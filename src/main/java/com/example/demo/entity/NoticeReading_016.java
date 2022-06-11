package com.example.demo.entity;

public class NoticeReading_016 {
    String id;
    String nId;
    String rId;
    String rTime;
    int status;

    public NoticeReading_016(String id, String nId, String rId, String rTime, int status) {
        this.id = id;
        this.nId = nId;
        this.rId = rId;
        this.rTime = rTime;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getnId() {
        return nId;
    }

    public void setnId(String nId) {
        this.nId = nId;
    }

    public String getrId() {
        return rId;
    }

    public void setrId(String rId) {
        this.rId = rId;
    }

    public String getrTime() {
        return rTime;
    }

    public void setrTime(String rTime) {
        this.rTime = rTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
