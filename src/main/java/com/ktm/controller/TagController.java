package com.ktm.controller;


import com.ktm.model.Tag;
import com.ktm.service.TagService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/tag")
public class TagController {


    @Resource
    private TagService tagService;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<Tag> tags = tagService.findAll();
        model.addAttribute("tags", tags);
        return "back/tag/index";
    }


    @PostMapping("/insert")
    public String insert(Tag tag) {
        tagService.insert(tag);
        return "redirect:/tag/findAll";
    }


    @GetMapping("/findByType")
    @ResponseBody
    public List<Tag> findByType(Model model, String type) {
        System.out.println(type);
        return tagService.findByType(type);

    }
}
