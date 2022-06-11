package com.example.demo.utils;

import java.sql.*;

public class MysqlConn {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb?serverTimezone=UTC","root","123456");
        return connection;
    }
    public static Statement getStatement(){
        try {
            return MysqlConn.getConnection().createStatement();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
    public static PreparedStatement getPreparedStatement(String sql) throws SQLException, ClassNotFoundException {
        return MysqlConn.getConnection().prepareStatement(sql);
    }
    public static void release(Connection connection,Statement statement,ResultSet resultSet,PreparedStatement preparedStatement){
        if(resultSet!=null){
            try {
                resultSet.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            resultSet=null;
        }
        if(statement!=null){
            try {
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            statement=null;
        }
        if(preparedStatement!=null){
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            preparedStatement=null;
        }
        if(connection!=null){
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            connection=null;
        }
    }
}
