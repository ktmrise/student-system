package com.ktm.model;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors
@TableName("t_clazz")
public class Clazz {

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String name;
    private Integer tagId;

    private Tag tag;
}
