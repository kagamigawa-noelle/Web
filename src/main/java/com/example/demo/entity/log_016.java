package com.example.demo.entity;

public class log_016 {
    String id;
    String project;
    String keyword;
    String value;
    String cTime;
    int status;

    public log_016(String id, String project, String keyword, String value, String cTime, int status) {
        this.id = id;
        this.project = project;
        this.keyword = keyword;
        this.value = value;
        this.cTime = cTime;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
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
