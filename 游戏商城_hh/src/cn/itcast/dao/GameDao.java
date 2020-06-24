package cn.itcast.dao;

import cn.itcast.domain.Game;
import cn.itcast.domain.User;
import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
//商品预览
public class GameDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    public List getgame() {
        String sql = "select * from game";
        List gameList = null;
        try {
            gameList = template.queryForList(sql);
        } catch (DataAccessException e) {
            e.printStackTrace();
        } finally {
            return  gameList;
        }
    }
}
