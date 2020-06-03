package com.ktm;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ktm.mapper.CityMapper;
import com.ktm.mapper.ClazzMapper;
import com.ktm.mapper.GroupMapper;
import com.ktm.mapper.TagMapper;
import com.ktm.model.City;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;


@SpringBootTest
class StudentSystemApplicationTests {



    @Resource
    private ClazzMapper clazzMapper;

    @Resource
    private TagMapper tagMapper;

    @Resource
    private GroupMapper groupMapper;

    @Resource
    private CityMapper cityMapper;

    @Test
    void contextLoads() {
        System.out.println(tagMapper.findByType("班级"));
    }


    @Test
    void testGroup() {
        Page<City> cityPage = cityMapper.selectPage(new Page<>(1, 2), null);
        System.out.println(cityPage.getRecords());
        System.out.println(cityPage.getCurrent());
        System.out.println(cityPage.getPages());
        System.out.println(cityPage.getTotal());
        System.out.println(cityPage.getSize());


    }

}
