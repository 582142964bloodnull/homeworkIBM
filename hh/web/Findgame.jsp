<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,cn.itcast.*" %>
<%@ page import="cn.itcast.dao.FineDao" %>

<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>游戏查询</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
          crossorigin="anonymous">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body style="background:url('img/bizhi1.jpg');">
<a href="index.jsp"> 返回首页</a>
<%  session = request.getSession();
    String username = (String) session.getAttribute("username");
    if(username!= null){
        username = "你好  ！"+username+"用户。";

    }else {
        username="暂时没有登陆";
    }
%>
<h1><% out.print(username);  %></h1>
<h1 style=" text-align:center">查询游戏</h1>
<form method="get" action=""style=" text-align:center">
请输入需要查询的游戏编号：<input type="text" name="gameId">
    <input type="submit" value="查询">
</form>
<% try {
    int gameId = Integer.parseInt(request.getParameter("gameId"));
    FineDao fineDao = new FineDao();
    List gameList = fineDao.finegame(gameId);
    if (gameList != null){
        %>
                <div class="container">
                    <h3 style="text-align: center">游戏目录</h3>
                    <table border="1" class="table table-bordered table-hover">
                        <tr class="success">
                            <th>游戏编号</th>
                            <th>游戏名字</th>
                            <th>登陆平台</th>
                            <th>年龄限制</th>
                            <th>游戏内存</th>
                            <th>游戏价格</th>
                            <th>游戏类型</th>
                            <th>操作</th>
                        </tr>
                        <% for(int i=0;i<gameList.size();i++){
                            Map userMap= (Map) gameList.get(i);
                        %>
                        <tr>
                            <td><% out.print(userMap.get("game_id")); %></td>
                            <td><% out.print(userMap.get("game_name")); %></td>
                            <td><% out.print(userMap.get("game_log")); %></td>
                            <td><% out.print(userMap.get("game_cpu")); %></td>
                            <td><% out.print(userMap.get("game_screen")); %></td>
                            <td><%out.print(userMap.get("game_price")); %></td>
                            <td><%out.print(userMap.get("game_charge")); %></td>
                            <td><a class="btn btn-default btn-sm" href="/game_war_exploded/JionServlet?gameName=<% out.print(userMap.get("game_name")); %>&gameLog=<% out.print(userMap.get("game_log")); %><% out.print(userMap.get("game_log")); %>&shopId=<% out.print(userMap.get("game_id")); %>&game_price=<% out.print(userMap.get("game_price")); %>">加入购物车</a></td>
                        </tr>
                        <% } %>
                    </table>
                </div>

<%}else {
        out.print("<h1>查询不到游戏信息<h1>");
}
} catch (Exception e) {

} finally {
} %>

</body>
</html>