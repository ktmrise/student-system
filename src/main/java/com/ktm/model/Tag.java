package com.ktm.model;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
@TableName("t_tag")
public class Tag {

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;
    private String name;
    private String type;
    private Date createTime;

}
