package cn.itcast.dao;

import cn.itcast.domain.User;
import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
//登录界面，连接数据库
public class UserDao {
        private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
        public User Login(User loginUser){
            String sql = "select * from user where username = ? and password = ?";
            User user = null;
            try {
                user = template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),loginUser.getUsername(),loginUser.getPassword());
            } catch (DataAccessException e) {
                user = null;
            }finally {
                return user;
            }

        }

}
