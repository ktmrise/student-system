package com.ktm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.Clazz;

import java.util.List;

public interface ClazzMapper extends BaseMapper<Clazz> {


    List<Clazz> findAll();


    String findNameById(Integer id);


}
