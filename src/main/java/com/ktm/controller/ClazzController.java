package com.ktm.controller;


import com.ktm.model.Clazz;
import com.ktm.service.ClazzService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/clazz")
public class ClazzController {


    @Resource
    private ClazzService clazzService;


    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<Clazz> clazzes = clazzService.findAll();
        model.addAttribute("clazzes", clazzes);
        return "back/clazz/index";
    }
}
