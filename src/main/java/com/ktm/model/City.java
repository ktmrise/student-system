package com.ktm.model;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
@TableName("t_city")
public class City {


    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;
    private String name;
    private Date createTime;
    private Integer numbers;
}
