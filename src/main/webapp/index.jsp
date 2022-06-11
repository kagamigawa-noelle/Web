<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <style>
        .main{
            height: 700px;
            padding-top: 60px;
        }
        .main .body{
            height: 700px;
            width: 500px;
            margin: 0 auto;
            padding-top: 50px;
            text-align: center;
        }
        .main .body h1,h2{
            color: white;
            font-weight: 400;
        }
        .main .body input{
            height: 30px;
            width: 250px;
            margin: 10px 0;
            border-radius: 15px;
            outline: none;
            border: 2px solid skyblue;
            padding: 0 10px;
            font-size: 16px;
        }
        .main .body .more input{
            width: 15px;
            height: 15px;
            margin-right: 5px;
        }
        .main .body .more{
            margin: 0 auto;
            width: 250px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .l{
            font-size: 14px;
        }
        .main .body .more a{
            font-size: 14px;
        }
        body {
            background-image: url(https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F1%2F53e1fe1fd0732.jpg%3Fdown&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657467916&t=d9de44d4aaacff1ef7680fa4452f8da6);
            background-size: 100% 100%;
            background-position: left top;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
        .main .body .login{
            height: 40px;
            width: 300px;
            border-radius: 20px;
            margin-top: 20px;
            color: blue;
            cursor: pointer;
        }
        .more a{
            margin-left: 5px;
        }
    </style>
</head>
<body>
<div class="main">
    <%
        String account="";
        String password="";
        Cookie cookie[]=request.getCookies();
        if(cookie!=null&&cookie.length>0){
            for (int i=0;i<cookie.length;i++){
                if("account".equals(cookie[i].getName())) account=cookie[i].getValue();
                else if("password".equals(cookie[i].getName())) {
                    password=cookie[i].getValue();
                }
            }
        }
    %>
    <form action="/LoginServlet" >
        <div class="body">
            <h1>我的作业登录页面</h1>
            <h2>登录</h2>
            <input type="text" name="account" value="<%=account%>">
            <br>
            <input type="password" name="password"  value="<%=password%>" >
            <div class="more">
                <div class="l">
                    <input type="checkbox" name="memory" <%=password.equals("")?"":"checked"%>>记住密码
                </div>

                <div class="r">
                    <a href="/signin.jsp">注册用户</a>
                    <a href="">忘记密码?</a>
                </div>
            </div>
            <input type="submit" value="登录" class="login">
        </div>
    </form>

</div>
</body>
</html>