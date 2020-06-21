package cn.itcast.dao;

import cn.itcast.domain.User;
import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
//注册
public class RegisterDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource()); //创建jdbc模板
    public boolean Register(User registerUser) {
        String sql = "insert into user(username,password) value(?,?)";
        boolean result = true;
        try {
            template.update(sql,registerUser.getUsername(),registerUser.getPassword());
        } catch (DataAccessException e) {
            result = false;
            e.printStackTrace();
        } finally {
            return result;
        }
    }
}
