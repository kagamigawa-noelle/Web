<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2022/6/11
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册/登录</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .main{
            height: 100%;
            width: 1300px;
            margin: 0 auto;
            display: flex;
        }
        .main .left{
            width: 500px;
            height: 710px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            box-shadow: rgba(0,0,0,0.1) 0px 10px 10px 5px;
        }
        .main .right{
            width: 800px;
            height: 710px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            box-shadow: rgba(0,0,0,0.1) 5px 0 10px 5px;
        }
        .main .right .c{
            margin: 20px 0;
        }
        .right h2{
            margin-bottom: 50px;
        }
        .left h2{
            margin-bottom: 50px;
        }
        .left p{
            font-size: 14px;
            color: gray;
        }
        .left a{
            display: block;
            margin-top: 40px;
            text-align: center;
            line-height: 40px;
            color: white;
            width: 150px;
            height: 40px;
            border-radius: 20px;
            text-decoration: none;
            background-color: dimgrey;
        }
        .main input{
            width: 300px;
            height: 30px;
            border-radius: 15px;
            outline: none;
            border: 2px solid skyblue;
            padding: 0 20px;
            font-size: 14px;
        }
        #go{
            margin-top: 70px;
            width: 150px;
            height: 40px;
            border-radius: 20px;
            background-color: dimgrey;
            color: white;
            cursor: pointer;
        }
        body{
            width: 100%;
            height: 100%;
        }

    </style>
</head>
<body>
<div class="main">
    <div class="left">
        <h2>欢迎回来</h2>
        <p>与我们保持联系，请登录您的个人信息</p>
        <a href="/index.jsp">立即登录</a>
    </div>
    <form method="post" action="/SginInServlet">
        <div class="right">
            <h2>创建账号</h2>
            <input type="text" name="stuid" placeholder="学号">
            <br>
            <input type="text" name="name" placeholder="姓名">
            <div class="c">
                <select name="college">
                    <option>请选择所在学院</option>
                    <option value="jsjgc">计算机工程学院</option>
                    <option value="jxgc">机械工程</option>
                </select>
                <select name="major">
                    <option>请选择你的专业</option>
                    <option value="jsjkxyjs">计算机科学与技术</option>
                    <option value="jxxy">机械工程</option>
                </select>
                <select name="classes">
                    <option>请选择所在班级</option>
                    <option value="jsjkxyjs1">计科1班</option>
                    <option value="jxxy1">机械1班</option>
                </select>
            </div>
            <input type="text" name="email" placeholder="Email">
            <br>
            <input type="password" name="password" placeholder="密码">
            <br>
            <input type="tel" name="phone" placeholder="手机号码">
            <br>
            <input type="submit" value="立即注册" id="go">
        </div>
    </form>
</div>
</body>
</html>
