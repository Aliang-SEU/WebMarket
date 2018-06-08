package cn.aliang.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tmpl")
public class PageController {

    @RequestMapping("/{name}")
    public String getTemplatePage(@PathVariable(value = "name") String pageName){
        return "tmpl/" + pageName;
    }
}
