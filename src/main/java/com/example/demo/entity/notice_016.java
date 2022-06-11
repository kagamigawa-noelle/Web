package com.example.demo.entity;

public class notice_016 {
    String id;
    String title;
    String content;
    String creTime;
    String sTime;
    String sId;
    String pTime;
    String pId;
    String dTime;
    int status;

    public notice_016(String id, String title, String content, String creTime, String sTime, String sId, String pTime, String pId, String dTime, int status) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.creTime = creTime;
        this.sTime = sTime;
        this.sId = sId;
        this.pTime = pTime;
        this.pId = pId;
        this.dTime = dTime;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreTime() {
        return creTime;
    }

    public void setCreTime(String creTime) {
        this.creTime = creTime;
    }

    public String getsTime() {
        return sTime;
    }

    public void setsTime(String sTime) {
        this.sTime = sTime;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public String getpTime() {
        return pTime;
    }

    public void setpTime(String pTime) {
        this.pTime = pTime;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
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
