package cn.aliang.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tmpl")
public class PageController {

    /**
     * 返回对应的页面
     * @param pageName
     * @return
     */
    @RequestMapping("/{name}")
    public String getTemplatePage(@PathVariable(value = "name") String pageName){
        return "tmpl/" + pageName;
    }
}
