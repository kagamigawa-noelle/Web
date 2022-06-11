package com.example.demo.entity;

public class ElectiveStudent_016 {
    String id;
    String classId;
    String sid;
    int status;

    public ElectiveStudent_016(String id, String classId, String sid, int status) {
        this.id = id;
        this.classId = classId;
        this.sid = sid;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
