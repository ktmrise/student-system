package com.ktm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.DTO.StudentDTO01;
import com.ktm.model.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper extends BaseMapper<Student> {


    List<Student> selectAll();


    List<StudentDTO01> findAll();


    List<StudentDTO01> find(@Param("col") String searchType, @Param("value") String searchValue);

    List<StudentDTO01> findByPage(@Param("col") String searchType, @Param("value") String searchValue, @Param(("offset")) Integer offset);

    Integer totalCount(@Param("col") String searchType, @Param("value") String searchValue);
}
