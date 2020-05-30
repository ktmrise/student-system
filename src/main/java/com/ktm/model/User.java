package com.ktm.model;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("t_user")
public class User {

    private String  name;
    private int id;
    private String password;
    private String status;
    private Date regTime;
    private String role;

}
