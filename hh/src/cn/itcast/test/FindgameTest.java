package cn.itcast.test;

import cn.itcast.dao.FineDao;
import org.junit.Test;

import java.util.List;

public class FindgameTest {
    @Test
    public  void findgameTest(){
        int gameId = 1;
        FineDao fineDao = new FineDao();
        List result = fineDao.finegame(gameId);
        System.out.println(result);
    }
}
