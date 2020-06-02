package com.ktm;

import com.ktm.model.City;
import com.ktm.service.CityService;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest
class StudentSystemApplicationTests {

    @Resource
    private CityService cityService;

    @Test
    void contextLoads() {
        cityService.findAll().forEach(city -> System.out.println("city"+city));
    }

}
