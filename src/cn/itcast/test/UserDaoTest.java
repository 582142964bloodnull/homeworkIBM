package cn.itcast.test;


import cn.itcast.dao.RegisterDao;
import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import org.junit.Test;

public class UserDaoTest {
    @Test
    public void testLogin(){
        User Loginuser = new User();
        Loginuser.setUsername("abc");
        Loginuser.setPassword("123");
        UserDao dao = new UserDao();
        User user =dao.Login(Loginuser);
        System.out.println(user);

    }

    @Test
    public void testRegister(){
        User registerUser = new User("bcd","456");
        boolean result = new RegisterDao().Register(registerUser);
        System.out.println(result);
    }





}
