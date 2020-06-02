package com.ktm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.City;

import java.util.List;

public interface CityMapper extends BaseMapper<City> {


    List<City> findAll();
}
