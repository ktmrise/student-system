package com.ktm.service;


import com.ktm.model.User;



public interface UserService {

    void register(User user);

    User login(User user);
}
