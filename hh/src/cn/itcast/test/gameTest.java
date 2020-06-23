package cn.itcast.test;

import cn.itcast.dao.RegisterDao;
import cn.itcast.dao.UserDao;
import cn.itcast.dao.GameDao;
import cn.itcast.domain.Game;
import cn.itcast.domain.User;
import org.junit.Test;

import java.util.List;

public class gameTest {

    @Test
    public void testgame(){
        List game;
        GameDao gameDao= new GameDao();
        game = gameDao.getgame();
        System.out.println(game);
    }

}
