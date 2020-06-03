package com.ktm.service.impl;

import com.ktm.mapper.ClazzMapper;
import com.ktm.mapper.TagMapper;
import com.ktm.model.Clazz;
import com.ktm.model.Tag;
import com.ktm.service.ClazzService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class ClazzServiceImpl implements ClazzService {


    @Resource
    private ClazzMapper clazzMapper;

    @Resource
    private TagMapper tagMapper;




    @Override
    public List<Clazz> findAll() {
        return clazzMapper.findAll();

    }

    @Override
    public void insert(Clazz clazz) {
        clazzMapper.insert(clazz);
    }
}
