package cn.itcast.test;

import cn.itcast.dao.DeletShopingDao;
import cn.itcast.dao.ShopingCartDao;
import org.junit.Test;

import java.util.List;

public class ShopingCartTest {
    @Test
    public void shopingCarTest(){
        ShopingCartDao shopingCartDao = new ShopingCartDao();
        String username  = "abc";
        List shopingCartList = shopingCartDao.getShopingCart(username);
        System.out.println(shopingCartList);
    }

    @Test
    public void shopingCarDeleteTest(){
        DeletShopingDao deletShopingDao = new DeletShopingDao();
        int openId = 2;
        boolean result = deletShopingDao.deletShopingCart(openId);
        System.out.println(result);
    }
}
