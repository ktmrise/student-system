package com.ktm.service.impl;

import com.ktm.mapper.UserMapper;
import com.ktm.model.User;
import com.ktm.result.Result;
import com.ktm.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
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
        User dbUser = userMapper.findByName(user.getName());
        if (dbUser != null) {
            throw new RuntimeException("用户名已存在");
        }
        user.setRegTime(new Date());
        user.setStatus("激活");
        userMapper.insert(user);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public User login(User user) {
        User dbUser = userMapper.findByName(user.getName());
        if (dbUser != null) {
            if (StringUtils.equals(user.getPassword(), dbUser.getPassword())) {
                return dbUser;
            }
        }
        throw new RuntimeException("用户名不存在");

    }
}
