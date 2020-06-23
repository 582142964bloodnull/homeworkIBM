package cn.itcast.dao;

import cn.itcast.until.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
//通过编号查找游戏
public class FineDao {
    JdbcTemplate  Template = new JdbcTemplate(JDBCUtils.getDataSource());
    public List finegame(int gameId){
        String sql = "select * from game where game_id = ?";
        List game = null;
        try {
          game =  Template.queryForList(sql,gameId);
        } catch (DataAccessException e) {
            e.printStackTrace();
        } finally {
            return game;
        }
    }
}
