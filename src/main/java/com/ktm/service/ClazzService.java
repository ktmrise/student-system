package com.ktm.service;


import com.ktm.model.Clazz;

import java.util.List;

public interface ClazzService {

    List<Clazz> findAll();


    void insert(Clazz clazz);
}
