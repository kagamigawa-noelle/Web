package com.example.demo.action;

import com.example.demo.service.UserService;
import com.example.demo.service.UserServiceImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account=request.getParameter("account");
        String password=request.getParameter("password");
        String memory=request.getParameter("memory");
        UserService userService=new UserServiceImpl();
        if(userService.studentLogin(account,password)){
            HttpSession httpSession=request.getSession();
            httpSession.setAttribute("account",account);
            if("on".equals(memory)){
                Cookie aCookie=new Cookie("account",account);
                Cookie pCookie=new Cookie("password",password);
                aCookie.setMaxAge(60*60);
                pCookie.setMaxAge(60*60);
                aCookie.setPath(request.getContextPath());
                pCookie.setPath(request.getContextPath());
                response.addCookie(aCookie);
                response.addCookie(pCookie);
            }
            else {
                Cookie cookie[]=request.getCookies();
                for (Cookie cookie1 : cookie) {
                    cookie1.setMaxAge(0);
                    response.addCookie(cookie1);
                }
            }
            response.sendRedirect("/Menu?type=student");
        }
        else
            response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
