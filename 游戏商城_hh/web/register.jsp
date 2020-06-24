<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆界面</title>
</head>
<body style="background:url('img/bizhi1.jpg');">
<h1>欢迎注册</h1>
<form action="/game_war_exploded/registerServlet" method="post">
    用户名:<input type="text" name="username" style="width:300px; height:40px;"><br>
    密码：<input type="password" name="password" style="width:300px; height:40px;"><br>
    <input type="submit" value="注册" style="width:100px; height:50px;"/>
</form>
<a href="index.jsp"> 返回首页</a>
</body>
</html>