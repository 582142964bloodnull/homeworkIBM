package cn.itcast.dao;

import cn.itcast.domain.User;
import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
//加入购物车
public class JoinDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource()); //创建jdbc模板
    public boolean Join(String userName,int shopId,String gameName, String game_log,int game_price ) {
        String sql = "insert into orders(shopId,username,game_name,game_log,game_price) value(?,?,?,?,?)";
        boolean result = true;
        try {
            template.update(sql,shopId,userName,gameName,game_log,game_price);
        } catch (DataAccessException e) {
            result = false;
            e.printStackTrace();
        } finally {
            return result;
        }
    }
}
