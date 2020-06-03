package com.ktm;

import com.ktm.mapper.ClazzMapper;
import com.ktm.mapper.TagMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;


@SpringBootTest
class StudentSystemApplicationTests {



    @Resource
    private ClazzMapper clazzMapper;

    @Resource
    private TagMapper tagMapper;

    @Test
    void contextLoads() {
        System.out.println(tagMapper.findByType("班级"));
    }

}
