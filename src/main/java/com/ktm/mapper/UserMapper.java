package com.ktm.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ktm.model.User;

public interface UserMapper extends BaseMapper<User> {

    User findByName(String name);
}
