package cn.itcast.dao;

import cn.itcast.domain.Phone;
import cn.itcast.domain.User;
import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
//商品预览
public class phoneDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    public List getPhone() {
        String sql = "select * from phone";
        List phoneList = null;
        try {
            phoneList = template.queryForList(sql);
        } catch (DataAccessException e) {
            e.printStackTrace();
        } finally {
            return  phoneList;
        }
    }
}
