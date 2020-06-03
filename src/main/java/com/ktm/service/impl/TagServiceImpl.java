package com.ktm.service.impl;

import com.ktm.mapper.TagMapper;
import com.ktm.model.Tag;
import com.ktm.service.TagService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;


@Service
@Transactional
public class TagServiceImpl implements TagService {


    @Resource
    private TagMapper tagMapper;


    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Tag> findAll() {

        return tagMapper.findAll();
    }

    @Override
    public void insert(Tag tag) {
        tag.setCreateTime(new Date());
        tagMapper.insert(tag);
    }

    @Override
    public List<Tag> findByType(String type) {
       return tagMapper.findByType(type);
    }
}
