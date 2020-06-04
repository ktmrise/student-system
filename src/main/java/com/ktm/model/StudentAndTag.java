package com.ktm.model;


import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class StudentAndTag {

    private Integer id;
    private Integer studentId;
    private Integer tagId;
}
