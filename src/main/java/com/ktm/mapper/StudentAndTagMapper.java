package com.ktm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.StudentAndTag;

public interface StudentAndTagMapper extends BaseMapper<StudentAndTagMapper> {
    StudentAndTag selectByStudentId(Integer id);
}
