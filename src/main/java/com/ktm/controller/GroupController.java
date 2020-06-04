package com.ktm.controller;


import com.ktm.mapper.GroupMapper;
import com.ktm.model.Group;
import com.ktm.service.GroupService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/group")
public class GroupController {


    @Resource
    private GroupService groupService;

    @Resource
    private GroupMapper groupMapper;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<Group> groups = groupService.findAll();
        model.addAttribute("groups", groups);
        return "back/group/index";
    }


    @PostMapping("/insert")
    public String insert(Group group) {
        groupMapper.insert(group);
        return "redirect:/group/findAll";
    }
}
