package com.ktm.controller;


import com.ktm.model.Group;
import com.ktm.service.GroupService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/group")
public class GroupController {


    @Resource
    private GroupService groupService;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<Group> groups = groupService.findAll();
        model.addAttribute("groups", groups);
        return "back/group/index";
    }
}
