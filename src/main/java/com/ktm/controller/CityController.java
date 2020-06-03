package com.ktm.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ktm.mapper.CityMapper;
import com.ktm.model.City;
import com.ktm.result.Result;
import com.ktm.service.CityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/city")
public class CityController {


    @Resource
    private CityService cityService;

    @Resource
    private CityMapper cityMapper;


    @GetMapping("/findAll")
    public String findAll(Model model,@RequestParam(value = "page",defaultValue = "1") int page) {
//        List<City> cities = cityService.findAll();
//        model.addAttribute("cities", cities);
        Page<City> cityPage = cityMapper.selectPage(new Page<>(page, 2), null);
        model.addAttribute("cities", cityPage.getRecords());
        model.addAttribute("totalPage", cityPage.getPages());
        model.addAttribute("currentPage", cityPage.getCurrent());
        return "back/city/index";
    }


    @PostMapping("/add")
    public String cityAdd(City city) {
        cityService.cityAdd(city);
        return "redirect:/city/findAll";
    }


    @GetMapping("/delete")
    public String cityDelete(Integer id) {
        cityMapper.deleteById(id);
        return "redirect:/city/findAll";
    }


    @GetMapping("/show")
    public String cityShow(Integer id, Model model) {
        City city = cityMapper.selectById(id);
        model.addAttribute("city", city);
        return "back/update";
    }

    @PostMapping("/update")
    public String cityUpdate(City city) {
        System.out.println(city);
        cityMapper.updateById(city);
        return "redirect:/city/findAll";
    }

}

