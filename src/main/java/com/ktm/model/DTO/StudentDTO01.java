package com.ktm.model.DTO;

import com.ktm.model.City;
import com.ktm.model.Clazz;
import com.ktm.model.Group;
import com.ktm.model.Tag;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;
import java.util.List;

@Data
@Accessors(chain = true)
public class StudentDTO01 {
    private Integer id;
    private String name;
    private Integer age;
    private Date bir;
    private String phone;
    private String qq;
    private String attr;
    private String starts;
    private String mark;
    private Integer cityId;
    private Integer clazzId;
    private Integer groupId;


    private City city;
    private Clazz clazz;
    private Group group;

    private List<Tag> tags;
}
