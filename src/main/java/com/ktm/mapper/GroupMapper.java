package com.ktm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.Group;

import java.util.List;

public interface GroupMapper extends BaseMapper<Group> {

    List<Group> findAll();
}
