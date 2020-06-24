package cn.itcast.web.servlet;

import cn.itcast.dao.DeletShopingDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//从购物车删除商品
@WebServlet("/DeleteShopingCarServlet")
public class DeleteShopingCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
               int  orderId = new  Integer(request.getParameter("orderId")) ;
               DeletShopingDao  deletShopingDao = new DeletShopingDao();
                boolean result = deletShopingDao.deletShopingCart(orderId);
                if (result){
                    response.setContentType("text/html;charset=utf8");
                    response.getWriter().write("<script>alert('删除成功，请继续购物');window.location.href='/game_war_exploded/ShopingCar.jsp';</script>");

                }else{
                    response.setContentType("text/html;charset=utf8");
                    response.getWriter().write("<script>alert('删除失败，请稍后重试');window.location.href='/game_war_exploded/ShopingCar.jsp';</script>");

                }
    }
}
