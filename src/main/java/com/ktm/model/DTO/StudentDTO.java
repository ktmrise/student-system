package com.ktm.model.DTO;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;


@Data
@Accessors(chain = true)
public class StudentDTO {

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

    private String tagName;
    private String cityName;
    private String clazzName;
    private String groupName;
}
