<%--
  Created by IntelliJ IDEA.
  User: 72412
  Date: 2019/6/22
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<html>
  <head>
      <link rel="stylesheet" href="css/ppt2.css" >
      <script src="js/jquery-3.4.1.js"></script>
    <title>欢迎</title>
      <style>
          h1,a{
              text-align: center;
          }
      </style>
      <link type="text/css" rel="stylesheet" href="dx.css" />
  </head>
  <body style="background:#171A21;">
  <%
      session = request.getSession();//，从当前request中获取session，如果获取不到session，则会自动创建一个session，并返回新创建的session；如果获取到，则返回获取到的session;
      String username = (String)session.getAttribute("username"); //getAttribute() 方法返回指定属性名的属性值
      if(username!= null){
        username = "您好  ！"+username+"用户。";

      }else {
        username="请先登陆";
      }
      %>
  <div class="dingbu">
  <h1 text-align:center  >Kegis™游戏商城</h1><br></div>
  <div class="dingxia">
  <div class="dingxia1">
  <a href="/game_war_exploded/register.html">注册</a>
  <a>&nbsp;&nbsp;</a>
  <a href="/game_war_exploded/login.html">登陆</a></div>
  <a href="/game_war_exploded/SignOutServlet">
  <p align="right">退出登陆</p>
  </a>
  <h2><% out.print(username); %></h2><br></div>
  <div class="gongneng">
      <div class="gnz"></div>
      <div class="logo"><br><br><br><br><br><br>

</div>
      <div style=" text-align:center;background:  #183D58;margin-top: 5px;margin-bottom: 5px;margin-left:5px; margin-right:5px"><p><a href="/game_war_exploded/ShopingCar.jsp" >购物车</a></p><br></div>
      <div style=" text-align:center;background:  #183D58;margin-top: 5px;margin-bottom: 5px;margin-left:5px; margin-right:5px"><p><a href="/game_war_exploded/list.jsp">所有游戏</a></p><br></div>
          <div style=" text-align:center;background: #183D58;margin-top: 5px;margin-bottom: 5px;margin-left:5px; margin-right:5px"><p><a href="Finegame.jsp">查询游戏</a></p><br></div>
      <div class="jies"><p style="color:#66C0F4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里有风靡全球的游戏大作,丰富的游戏带来更多乐趣，尽在游戏商城！</p></div>
  </div>
   <div class="zhuti_z">
       <div class="ppt-container">
       <ul>
           <li onMouseOver="showImage(1)" style="font-size: large; color:#66C0F4 " >无主之地</li>
           <hr>
           <li onMouseOver="showImage(2)" style="font-size: large; color:#66C0F4">恶魔五月哭</li>
           <hr>
           <li onMouseOver="showImage(7)" style="font-size: large; color:#66C0F4">路易洋馆3</li>
           <hr>
           <li onMouseOver="showImage(4)" style="font-size: large; color:#66C0F4">gtd</li>
           <hr>
           <li onMouseOver="showImage(5)" style="font-size: large; color:#66C0F4">拳皇XIV</li>
           <hr>
       </ul>
       <img id="Image" src="image/ppt2/6.jpg">
   </div>

       <script>
           function showImage(name) {
               $("#Image").attr("src","image/ppt2/"+name+".jpg");//课本326 自定义showImage（）函数
           }

       </script>
       </div>

  <div>
      <div class="weiba">&nbsp;<br><br>&nbsp;</div>
      <div class="yqlj" style=" text-align:center">
          <a href="http://www.baidu.com/"><p>使用与销售 隐私权声明 商标 沪ICP备12038052号-4  京公网安备 11010802023178号 公司证件 © 2019 Kegis</p></a>
      </div>
  </div>
  </body>
</html>
