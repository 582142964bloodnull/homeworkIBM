package cn.itcast.test;

import cn.itcast.dao.RegisterDao;
import cn.itcast.dao.UserDao;
import cn.itcast.dao.phoneDao;
import cn.itcast.domain.Phone;
import cn.itcast.domain.User;
import org.junit.Test;

import java.util.List;

public class PhoneTest {

    @Test
    public void testPhone(){
        List phone;
        phoneDao phoneDao= new phoneDao();
        phone = phoneDao.getPhone();
        System.out.println(phone);
    }

}
