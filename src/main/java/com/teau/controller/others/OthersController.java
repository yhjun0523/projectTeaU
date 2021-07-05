package com.teau.controller.others;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OthersController {

    // 매거진 화면으로 이동
    @RequestMapping("/magazine.do")
    public String magazine() {
        System.out.println("매거진 페이지 이동");
        return "magazine";
    }
    
    // 티파인더 화면으로 이동
    @RequestMapping("/tea_finder.do")
    public String teaFiner() {
        System.out.println("티파인더 페이지 이동");
        return "tea_finder";
    }
    
    
}
