package com.ktm.model;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
@TableName("t_group")
public class Group {


    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String name;

    private String content;

    private Integer clazzId;

    private String clazzName;

}
