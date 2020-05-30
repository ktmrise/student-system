package com.ktm.model;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.boot.autoconfigure.web.ConditionalOnEnabledResourceChain;

import java.util.Date;

@Data
@TableName("t_user")
@Accessors(chain = true)
public class User {

    private String  name;
    private int id;
    private String password;
    private String status;
    private Date regTime;
    private String role;

}
