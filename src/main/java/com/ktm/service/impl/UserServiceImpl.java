package com.ktm.service.impl;

import com.ktm.mapper.UserMapper;
import com.ktm.model.User;
import com.ktm.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;


@Transactional
@Service
public class UserServiceImpl implements UserService {


    @Resource
    private UserMapper userMapper;

    @Override
    public void register(User user) {

        user.setRegTime(new Date());
        user.setStatus("激活");
        userMapper.insert(user);
    }
}
