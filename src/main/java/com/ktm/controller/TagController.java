package com.ktm.controller;


import com.ktm.model.Tag;
import com.ktm.service.TagService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/findByPage")
    public String findByPage(@RequestParam(value = "page", defaultValue = "1") Integer page,Model model) {
        List<Tag> tags = tagService.findByPage(page);
        List<Tag> allTags = tagService.findAll();
        model.addAttribute("tags", tags);
        model.addAttribute("currentPage", page);
        int size = allTags.size();
        if (size % 2 == 0) {
            model.addAttribute("totalPage", size / 2);
        } else {
            if (size / 2 == 0) {
                model.addAttribute("totalPage",1);
            }
            model.addAttribute("totalPage", size / 2 + 1);
        }
        return "back/tag/index";
    }
}
