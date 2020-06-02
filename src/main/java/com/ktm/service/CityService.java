package com.ktm.service;

import com.ktm.model.City;
import com.ktm.model.User;
import com.ktm.result.Result;

import java.util.List;

public interface CityService {


    List<City> findAll();

    void cityAdd(City city);
}
