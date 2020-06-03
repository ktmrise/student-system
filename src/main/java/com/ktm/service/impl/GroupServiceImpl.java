package com.ktm.service.impl;

import com.ktm.mapper.GroupMapper;
import com.ktm.model.Group;
import com.ktm.service.GroupService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class GroupServiceImpl implements GroupService {


    @Resource
    private GroupMapper groupMapper;

    @Override
    public List<Group> findAll() {
        return groupMapper.findAll();
    }

}
