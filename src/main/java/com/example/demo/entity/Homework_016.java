package com.example.demo.entity;

public class Homework_016 {
    String id;
    String descript;
    String classId;
    String cTime;
    String pTime;
    String dTime;
    int status;

    public Homework_016(String id, String descript, String classId, String cTime, String pTime, String dTime, int status) {
        this.id = id;
        this.descript = descript;
        this.classId = classId;
        this.cTime = cTime;
        this.pTime = pTime;
        this.dTime = dTime;
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

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getcTime() {
        return cTime;
    }

    public void setcTime(String cTime) {
        this.cTime = cTime;
    }

    public String getpTime() {
        return pTime;
    }

    public void setpTime(String pTime) {
        this.pTime = pTime;
    }

    public String getdTime() {
        return dTime;
    }

    public void setdTime(String dTime) {
        this.dTime = dTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
