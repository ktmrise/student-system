package com.ktm.controller;


import com.ktm.model.DTO.StudentDTO;
import com.ktm.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {


    @Resource
    private StudentService studentService;


    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<StudentDTO> studentDTOS = studentService.findAll();
        model.addAttribute("students", studentDTOS);
        return "back/student/index";
    }

}
