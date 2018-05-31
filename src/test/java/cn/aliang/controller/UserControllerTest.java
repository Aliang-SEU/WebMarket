package cn.aliang.controller;

import cn.aliang.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)     //调用Spring单元测试类
@WebAppConfiguration        //调用Java Web组件，如自动注入ServletContext Bean等
@ContextConfiguration(locations = {"classpath:spring/spring-*.xml"})      //加载Spring配置文件
public class UserControllerTest {

    private UserService userService;

    private UserController controller;
    private MockHttpServletRequest request;

    private MockMvc mockMvc; //SpringMVC提供的Controller测试类

    @Test
    public void toLogin() {
        String url = "";


    }

    @Test
    public void toRegister() {
    }

    @Test
    public void userRegister() {
    }

    @Test
    public void userLogin() {
    }
}