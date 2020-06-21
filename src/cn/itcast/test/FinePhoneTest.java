package cn.itcast.test;

import cn.itcast.dao.FineDao;
import org.junit.Test;

import java.util.List;

public class FinePhoneTest {
    @Test
    public  void findPhoneTest(){
        int phoneId = 1;
        FineDao fineDao = new FineDao();
        List result = fineDao.finePhone(phoneId);
        System.out.println(result);
    }
}
