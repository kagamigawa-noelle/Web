package com.example.demo.service;

import com.example.demo.entity.Student_016;
import com.example.demo.entity.Teachers_016;

import java.util.List;

public interface UserService {
    public boolean login(Student_016 student016);
    public List<Student_016> getAllStudents();
    public List<Teachers_016> getAllTeachers();
    public boolean studentLogin(String account,String password);
    public boolean delStu(String id);
}
