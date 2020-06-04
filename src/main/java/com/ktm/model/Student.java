package com.ktm.model;


import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;


@Data
@Accessors(chain = true)
public class Student {

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

}
