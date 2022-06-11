package com.example.demo.entity;

public class HomeworkDetialMore_016 {
    String dId;
    String descript;
    String filepath;
    String cTime;
    int status;

    public HomeworkDetialMore_016(String dId, String descript, String filepath, String cTime, int status) {
        this.dId = dId;
        this.descript = descript;
        this.filepath = filepath;
        this.cTime = cTime;
        this.status = status;
    }

    public String getdId() {
        return dId;
    }

    public void setdId(String dId) {
        this.dId = dId;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public String getcTime() {
        return cTime;
    }

    public void setcTime(String cTime) {
        this.cTime = cTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
