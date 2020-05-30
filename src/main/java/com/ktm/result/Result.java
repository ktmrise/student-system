package com.ktm.result;


import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class Result {

    private String message;
    private Boolean status;

}
