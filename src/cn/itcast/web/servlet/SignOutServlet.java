package cn.itcast.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//退出登录
@WebServlet("/SignOutServlet")
public class SignOutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        if (username != null) {
            session = request.getSession();
            session.invalidate();
            response.setContentType("text/html;charset=utf8");
            response.getWriter().write("<script>alert('退出成功');window.location.href='/phone_war_exploded/index.jsp';</script>");
        } else {
            response.setContentType("text/html;charset=utf8");
            response.getWriter().write("<script>alert('请先登陆');window.location.href='/phone_war_exploded/index.jsp';</script>");

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                this.doPost(request,response);
    }
}
