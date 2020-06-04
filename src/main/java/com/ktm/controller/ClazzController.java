package com.ktm.controller;


import com.ktm.model.Clazz;
import com.ktm.service.ClazzService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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


    @PostMapping("/insert")
    public String insert(Clazz clazz) {
        System.out.println(clazz);
        clazzService.insert(clazz);
        return "redirect:/clazz/findAll";
    }


    @GetMapping("/findAllClazzJSON")
    @ResponseBody
    public List<Clazz> findAllClazzJSON() {
        return clazzService.findAll();

    }
}
