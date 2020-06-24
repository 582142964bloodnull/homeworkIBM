package cn.itcast.dao;

import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
//购物车商品预览
public class ShopingCartDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    public List getShopingCart(String username){
            String sql = "select * from orders where username = ?";
            List shopingCarList = null;
        try {
            shopingCarList = template.queryForList(sql,username);
        } catch (DataAccessException e) {
            e.printStackTrace();
        } finally {
            return shopingCarList;
        }
    }
}
