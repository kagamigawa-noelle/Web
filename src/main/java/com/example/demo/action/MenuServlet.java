package com.example.demo.action;

import com.example.demo.entity.Student_016;
import com.example.demo.entity.Teachers_016;
import com.example.demo.service.UserService;
import com.example.demo.service.UserServiceImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "MenuServlet", value = "/Menu")
public class MenuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ways=request.getParameter("type");
        UserService userService=new UserServiceImpl();
        if(ways.equals("student")){
            List<Student_016> student_016s= userService.getAllStudents();
            request.setAttribute("students",student_016s);
            request.getRequestDispatcher("menu.jsp").forward(request,response);
        }
        if(ways.equals("teacher")){
            List<Teachers_016> teachers_016s= userService.getAllTeachers();
            request.setAttribute("teachers",teachers_016s);
            request.getRequestDispatcher("menu.jsp").forward(request,response);
        }
    }
}
