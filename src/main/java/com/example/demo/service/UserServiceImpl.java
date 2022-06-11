package com.example.demo.service;

import com.example.demo.dao.UserDao;
import com.example.demo.dao.UserDaoImpl;
import com.example.demo.entity.Student_016;
import com.example.demo.entity.Teachers_016;

import java.util.List;

public class UserServiceImpl implements UserService{
    UserDao userDao=new UserDaoImpl();

    @Override
    public boolean login(Student_016 student016) {
        return userDao.login(student016);
    }

    @Override
    public List<Student_016> getAllStudents() {
        return userDao.getAllStudents();
    }

    @Override
    public List<Teachers_016> getAllTeachers() {
        return userDao.getAllTeachers();
    }

    @Override
    public boolean studentLogin(String account, String password) {
        return userDao.studentLog(account,password);
    }

    @Override
    public boolean delStu(String id) {
        return userDao.delStu(id);
    }

}
