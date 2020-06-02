package com.ktm.model;


import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
@TableName("t_city")
public class City {

    private Integer id;
    private String name;
    private Date createTime;
    private Integer numbers;
}
