<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.entity.Student_016" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.entity.Teachers_016" %><%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2022/6/10
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MAIN_MENU</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .main{
            display: flex;
        }
        .main .left{
            background-color: skyblue;
            width: 15%;
            height: 710px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
        }
        .main .right{
            background-color: pink;
            width: 85%;
            height: 710px;
        }
        .left .bottom{
            height: 100px;
        }
        .right table{
            position: absolute;
            top: 100px;
            left: 300px;
            /*border: 2px solid black;*/
        }
        .right table td,th{
            width: 100px;
            text-align: center;

        }
        .main .left img{
            display: block;
            margin-top: 30px;
            width: 100px;
            height: 100px;
            border-radius: 25px;
        }
        .main .left span{
            display: block;
            width: 100%;
            background-color: black;
            height: 50px;
            text-align: center;
            line-height: 50px;
            color: white;
            margin-top: 20px;
        }
        .main .left ul{
            height: 350px;
            padding-top: 30px;
            list-style: none;
        }
        .main .left ul li{
            margin: 20px 0;
        }
        .main .left ul li a{
            text-decoration: none;
        }
        .bottom{
            margin-top: 150px;
            margin-right: 100px;
            font-size: 14px;
        }
        .bottom p{
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="main">
    <%
        List<Student_016> student_016s=(ArrayList<Student_016>)request.getAttribute("students");
        List<Teachers_016> teachers_016s=(ArrayList<Teachers_016>)request.getAttribute("teachers");
    %>
    <div class="left">
        <img src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi-1.lanrentuku.com%2F2020%2F11%2F5%2Fdef6ed04-6d34-402e-99c8-366266f627dd.png%3FimageView2%2F2%2Fw%2F500&refer=http%3A%2F%2Fi-1.lanrentuku.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657533775&t=c0b25d81ba092663fd660ce9f1d0af9e" alt="头像">
        <span>首页</span>
        <ul>
            <li><a href="">管理模块</a></li>
            <li><a href="/Menu?type=teacher">教师模块</a></li>
            <li><a href="/Menu?type=student">学生模块</a></li>
            <li><a href="">公共模块</a></li>
        </ul>
        <div class="bottom">
            <p>修改密码</p>
            <a href="/LogoutServlet">退出</a>
        </div>

    </div>
    <div class="right">
        <table cellspacing="0" border="2px" cellpadding="0">
            <%
                if(student_016s!=null){
            %>
            <tr><th>学号</th><th>姓名</th><th>邮件</th><th>班级代码</th><th>手机电话</th><th>操作</th></tr>
            <%for(int i=0;i<student_016s.size();i++){%>
            <tr><td><%=student_016s.get(i).getId()%></td><td><%=student_016s.get(i).getName()%>
            </td><td><%=student_016s.get(i).getEmail()%></td><td><%=student_016s.get(i).getClassName()%></td>
                <td><%=student_016s.get(i).getPhone()%></td><td><a href="">修改</a> <a href="/DelStuServlet?id=<%=student_016s.get(i).getId()%>" onclick="del()">删除</a></td></tr>
            <%
                    }
                } else if (teachers_016s!=null) {%>
            <tr><th>代码</th><th>姓名</th><th>邮件</th><th>手机电话</th><th>操作</th></tr>
            <%for(int i=0;i<teachers_016s.size();i++){%>
            <tr><td><%=teachers_016s.get(i).getId()%></td><td><%=teachers_016s.get(i).getName()%>
            </td><td><%=teachers_016s.get(i).getEmail()%></td><td><%=teachers_016s.get(i).getPhone()%></td>
                <td><a href="">修改</a> <a href="">删除</a></td></tr>
            <%
                }}
            %>
        </table>
    </div>
    <script type="text/javascript">
        function del() {
            if(!confirm("真的要删除吗？？不可挽回哦！！")){
                window.event.preventDefault()
            }
        }
    </script>
</div>
</body>
</html>
