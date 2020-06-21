package cn.itcast.test;

import cn.itcast.dao.JoinDao;
import cn.itcast.dao.phoneDao;
import org.junit.Test;

import java.util.List;

public class JoinTest {
    @Test
    public void testJoin(){
        JoinDao joinDao = new JoinDao();
        boolean result = joinDao.Join("aaa",2,"傻妞","华人牌",9);
        System.out.println(result);
    }
}
