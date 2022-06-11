package com.example.demo.dao;

import com.example.demo.entity.Student_016;
import com.example.demo.entity.Teachers_016;
import com.example.demo.utils.MysqlConn;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao{
    @Override
    public boolean login(Student_016 student016) {
        try {
            PreparedStatement preparedStatement= MysqlConn.getPreparedStatement("insert into students (学号,姓名,email,密码,班级代码,手机电话) values(?,?,?,?,?,?)");
            preparedStatement.setString(1, student016.getId());
            preparedStatement.setString(2, student016.getName());
            preparedStatement.setString(3, student016.getEmail());
            preparedStatement.setString(4, student016.getPassword());
            preparedStatement.setString(5, student016.getClassName());
            preparedStatement.setString(6, student016.getPhone());
            int rs=preparedStatement.executeUpdate();
            if(rs==1){
                return true;
            }
            return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Student_016> getAllStudents() {
        List<Student_016> student016s =new ArrayList<Student_016>();
        Statement statement=MysqlConn.getStatement();
        try {
            ResultSet resultSet=statement.executeQuery("select * from students");
            while (resultSet.next()){
                Student_016 student016 =new Student_016(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getString(7),resultSet.getInt(8));
                student016s.add(student016);
            }
            return student016s;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Teachers_016> getAllTeachers() {
        List<Teachers_016> teachers_016s =new ArrayList<Teachers_016>();
        Statement statement=MysqlConn.getStatement();
        try {
            ResultSet resultSet=statement.executeQuery("select * from teachers");
            while (resultSet.next()){
                Teachers_016 teachers_016 =new Teachers_016(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getInt(7));
                teachers_016s.add(teachers_016);
            }
            return teachers_016s;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean studentLog(String account, String password) {
        Statement statement=MysqlConn.getStatement();
        try {
            ResultSet resultSet=statement.executeQuery("select * from students");
            while (resultSet.next()){
                String account_=resultSet.getString("学号");
                String password_=resultSet.getString("密码");
                if(account_.equals(account)&&password_.equals(password)) return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public boolean delStu(String id) {
        Statement statement=MysqlConn.getStatement();
        try {
            int resultSet=statement.executeUpdate("delete from students where 学号='"+id+"'");
            if(resultSet!=0) return true;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}
