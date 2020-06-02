package com.ktm.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ktm.mapper.CityMapper;
import com.ktm.model.City;
import com.ktm.service.CityService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.SimpleFormatter;
import java.util.stream.Collectors;


@Service
@Transactional
public class CityServiceImpl implements CityService {

    @Resource
    private CityMapper cityMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<City> findAll() {
        return cityMapper.findAll();
    }
}