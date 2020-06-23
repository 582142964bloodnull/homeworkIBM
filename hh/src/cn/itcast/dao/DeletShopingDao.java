package cn.itcast.dao;

import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
//删除购物车里面的商品
public class DeletShopingDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource()); //创建jdbc模板
    public Boolean deletShopingCart(int orderId){
        String sql  = "delete from orders where orderId = ?";
        boolean result = true;
        try {
            template.update(sql,orderId);
        } catch (DataAccessException e) {
            e.printStackTrace();
            result = false;
        } finally {
            return result;
        }
    }
}
