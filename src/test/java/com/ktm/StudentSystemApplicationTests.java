package com.ktm;

import com.ktm.mapper.ClazzMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;


@SpringBootTest
class StudentSystemApplicationTests {



    @Resource
    private ClazzMapper clazzMapper;

    @Test
    void contextLoads() {
        System.out.println(clazzMapper.findAll());
    }

}
