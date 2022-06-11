package com.example.demo.action;

import com.example.demo.entity.Student_016;
import com.example.demo.service.UserService;
import com.example.demo.service.UserServiceImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SginInServlet", value = "/SginInServlet")
public class SginInServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("stuid");
        String name=request.getParameter("name");
        String college=request.getParameter("college");
        String major=request.getParameter("major");
        String classes=request.getParameter("classes");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String phone=request.getParameter("phone");
        Student_016 student016=new Student_016(id,name,email,password,classes,phone,"",1);
        UserService userService=new UserServiceImpl();
        userService.login(student016);
        response.sendRedirect("index.jsp");
    }
}
