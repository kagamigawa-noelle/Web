package com.example.demo.entity;

public class TeachingInfo_016 {
    String id;
    String tId;
    String cId;
    String cDescript;
    int status;

    public TeachingInfo_016(String id, String tId, String cId, String cDescript, int status) {
        this.id = id;
        this.tId = tId;
        this.cId = cId;
        this.cDescript = cDescript;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String gettId() {
        return tId;
    }

    public void settId(String tId) {
        this.tId = tId;
    }

    public String getcId() {
        return cId;
    }

    public void setcId(String cId) {
        this.cId = cId;
    }

    public String getcDescript() {
        return cDescript;
    }

    public void setcDescript(String cDescript) {
        this.cDescript = cDescript;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
