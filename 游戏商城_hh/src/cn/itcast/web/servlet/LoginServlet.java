package cn.itcast.web.servlet;


import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


//登录的servlet
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response)throws ServletException, IOException{
        HttpSession session = req.getSession();
        String username = (String)session.getAttribute("username");
        if (username == null) {
            req.setCharacterEncoding("utf-8");
            username = req.getParameter("username");
            String password = req.getParameter("password");
            User loginUser = new User(username,password);
            UserDao dao = new UserDao();
            User user = dao.Login(loginUser);
            if(user == null){
                response.setContentType("text/html;charset=utf8");
                response.getWriter().write("<script>alert('登陆失败账号或密码错误');history.go(-1);</script>");

            }else{
                session = req.getSession();
                session.setAttribute("username", username);
                response.setContentType("text/html;charset=utf8");
                response.getWriter().write("<script>alert('登陆成功');window.location.href='/game_war_exploded/index.jsp';</script>");

            }
        } else {
            response.setContentType("text/html;charset=utf8");
            response.getWriter().write("<script>alert('你已经登陆');history.go(-1);</script>");
            System.out.println("你已经登陆了");
        }

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
                this.doGet(req,resp);
    }
}
