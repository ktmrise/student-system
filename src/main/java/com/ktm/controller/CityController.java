package com.ktm.controller;


import com.ktm.mapper.CityMapper;
import com.ktm.model.City;
import com.ktm.service.CityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/city")
public class CityController {



    @Resource
    private CityService cityService;

    @GetMapping("/findAll")
    public String findAll( Model model) {
        List<City> cities = cityService.findAll();
        model.addAttribute("cities", cities);
        return "back/city/index";
    }



}
