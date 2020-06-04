package com.ktm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.Student;

import java.util.List;

public interface StudentMapper extends BaseMapper<Student> {


    List<Student> findAll();


}
