<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,cn.itcast.*" %>
<%@ page import="cn.itcast.dao.GameDao" %>
<%@ page import="cn.itcast.dao.ShopingCartDao" %>
<%
        session = request.getSession();
        String username = (String) session.getAttribute("username");
        if (username == null){
            out.print("<script>alert('你还未登陆，无法查看购物车');window.location.href='/game_war_exploded/index.jsp';</script>");
        }
        else{
            ShopingCartDao shopingCartDao = new ShopingCartDao();
            List shopCarList = shopingCartDao.getShopingCart(username);
%>
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
    <title>购物车</title>
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
<body style=" background: rgba(255,255,255,0);">
<h5><% out.print("你好，"+username+"用户。"); %></h5>
<div class="container">
    <h3 style="text-align: center">游戏目录</h3>
    <table border="1" class="table table-bordered table-hover">
        <tr class="success">
            <th>游戏编号</th>
            <th>用户名</th>
            <th>游戏名字</th>
            <th>登录平台</th>
            <th>游戏价格</th>
            <th>操作</th>
        </tr>
      <% for(int i =0; i < shopCarList.size(); i++)
      {           Map userMap= (Map) shopCarList.get(i);%>
        <tr>
            <td><% out.print(userMap.get("shopId")); %></td>
            <td><% out.print(userMap.get("username")); %></td>
            <td><% out.print(userMap.get("game_name")); %></td>
            <td><% out.print(userMap.get("game_plat")); %></td>
            <td><% out.print(userMap.get("game_price")); %></td>
            <td><a class="btn btn-default btn-sm" href="/game_war_exploded/DeleteShopingCarServlet?orderId=<% out.print(userMap.get("orderId")); %>">删除商品</a>&nbsp&nbsp&nbsp<a class="btn btn-default btn-sm">结算</a></td>
        </tr>
        <% } %>

        <a href="index.jsp"> 返回首页</a>
    </table>
</div>
</body>
</html>
<%  } %>
