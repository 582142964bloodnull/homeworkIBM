package cn.itcast.web.servlet;

import cn.itcast.dao.JoinDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//添加商品
@WebServlet("/JionServlet")
public class JionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        if (username != null) {
            String phoneName = request.getParameter("phoneName");
            int shopId = new Integer(request.getParameter("shopId"));
            String phoneLog = request.getParameter("phoneLog");
            int phonePrice = new  Integer(request.getParameter("phone_price"));
            JoinDao joinDao = new JoinDao();
            boolean result = joinDao.Join(username,shopId,phoneName,phoneLog,phonePrice);
            if(result){
                response.setContentType("text/html;charset=utf8");
                response.getWriter().write("<script>alert('添加成功，请查看！');history.go(-1);</script>");

            }else{
                response.setContentType("text/html;charset=utf8");
                response.getWriter().write("<script>alert('添加失败，联系管理员！');history.go(-1);</script>");

            }

        } else {
            response.setContentType("text/html;charset=utf8");
            response.getWriter().write("<script>alert('加入失败，请先登录！');history.go(-1);</script>");

        }
    }
}
