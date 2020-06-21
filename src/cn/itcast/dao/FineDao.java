package cn.itcast.dao;

import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
//通过编号查找游戏
public class FineDao {
    JdbcTemplate  Template = new JdbcTemplate(JDBCUtils.getDataSource());
    public List finePhone(int phoneId){
        String sql = "select * from phone where phone_id = ?";
        List phone = null;
        try {
          phone =  Template.queryForList(sql,phoneId);
        } catch (DataAccessException e) {
            e.printStackTrace();
        } finally {
            return phone;
        }
    }
}
