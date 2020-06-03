package com.ktm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.Tag;

import java.util.List;

public interface TagMapper extends BaseMapper<Tag> {

    List<Tag> findAll();

    List<Tag> findByType(String type);
}
