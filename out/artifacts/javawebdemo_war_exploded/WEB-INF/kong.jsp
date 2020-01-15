<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2020/1/14
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <style>
        body{
            background-image: url("/beijing.jpg");
            display: flex;
            justify-content: center;
            align-items: center;
        }
        p{
            size: 20px;
        }
        input{
            width: 180px;
            height: 30px;
        }
        #button{
            width: 60px;
            display: block;
            position: relative;
            justify-content: center;
            margin: auto;
            top: 30px;
        }
        #k{
            position: absolute;
            font-size: 33px;
            left: 200px;
            top: 100px;
        }
    </style>
</head>
<p id="k">用户名或密码输入错误</p>
<body>
<form action="/backed/user/login" method="post">
    <p>请输入账户名</p>
    <input type="text" placeholder="账户" name="username">
    <p>请输入密码</p>
    <input type="password" placeholder="密码" name="password">
    <input id="button" type="submit" value="登录">
</form>
</body>
</html>
