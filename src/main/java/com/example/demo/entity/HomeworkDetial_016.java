package com.example.demo.entity;

public class HomeworkDetial_016 {
    String id;
    String hId;
    String sId;
    String descript;
    String cTime;
    String grade;
    String rTime;
    int status;

    public HomeworkDetial_016(String id, String hId, String sId, String descript, String cTime, String grade, String rTime, int status) {
        this.id = id;
        this.hId = hId;
        this.sId = sId;
        this.descript = descript;
        this.cTime = cTime;
        this.grade = grade;
        this.rTime = rTime;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String gethId() {
        return hId;
    }

    public void sethId(String hId) {
        this.hId = hId;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public String getcTime() {
        return cTime;
    }

    public void setcTime(String cTime) {
        this.cTime = cTime;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
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
