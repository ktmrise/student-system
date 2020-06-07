package com.ktm.controller;


import com.ktm.model.DTO.StudentDTO;
import com.ktm.model.DTO.StudentDTO01;
import com.ktm.model.Student;
import com.ktm.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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


    @GetMapping("/selectAll")
    public String selectAll(Model model) {
        List<Student> students = studentService.SelectAll();
        model.addAttribute("students", students);
        return "back/student/index";
    }


    @GetMapping("/findAllStudent")
    public String findAllStudent(@RequestParam(value = "currentPage",defaultValue = "1") Integer currentPage, Model model, String searchType, String searchValue) {
        List<StudentDTO01> studentDTO01s = studentService.findAllStudent(searchType,searchValue,currentPage);
        Integer totalCount = studentService.totalCount(searchType, searchValue);
        Integer totalPage = totalCount % 2 == 0 ? totalCount / 2 : totalCount / 2 + 1;
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("students", studentDTO01s);
        model.addAttribute("searchType", searchType);
        model.addAttribute("searchValue", searchValue);
        model.addAttribute("currentPage", currentPage);
        return "back/student/index";
    }
}
