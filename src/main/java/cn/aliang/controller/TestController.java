package cn.aliang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class TestController {

    @RequestMapping("/adminIndex")
    public String adminIndex(){
        return "adminIndex";
    }

}
