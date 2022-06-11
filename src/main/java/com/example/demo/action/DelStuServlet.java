package com.example.demo.action;

import com.example.demo.service.UserService;
import com.example.demo.service.UserServiceImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DelStuServlet", value = "/DelStuServlet")
public class DelStuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        UserService userService=new UserServiceImpl();
        userService.delStu(id);
        response.sendRedirect("Menu?type=student");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
