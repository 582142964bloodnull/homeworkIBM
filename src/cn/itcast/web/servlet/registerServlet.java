package cn.itcast.web.servlet;

import cn.itcast.dao.RegisterDao;
import cn.itcast.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//注册的servlet
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
              request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        if (username == null) {
            username = request.getParameter("username");
            String password = request.getParameter("password");
            User  registerUser = new User(username,password);
            boolean result =  new RegisterDao().Register(registerUser);
            if (result){
                response.setContentType("text/html;charset=utf8");
                response.getWriter().write("<script>alert('注册成功');window.location.href='/phone_war_exploded/login.html';</script>");
            }else{
                response.setContentType("text/html;charset=utf8");
                response.getWriter().write("<script>alert('注册失败，联系管理员！');history.go(-1);</script>");
            }
        } else {
            response.setContentType("text/html;charset=utf8");
            response.getWriter().write("<script>alert('注册失败，你已经有账号！');history.go(-1);</script>");

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                    this.doPost(request,response);
    }
}
