package com.example.common.lang;

import lombok.Data;

import java.io.Serializable;

@Data
public class Result<T> implements Serializable {
    private Integer code; //编码：200成功，其它数字为失败
    private String msg; //错误信息
    private T data; //数据

    public static <T> Result<T> success() {
        Result<T> r = new Result<T>();
        r.code = 200;
        r.msg = "操作成功";
        return r;
    }

    public static <T> Result<T> success(T object) {
        Result<T> r = new Result<T>();
        r.data = object;
        r.code = 200;
        r.msg = "操作成功";
        return r;
    }

    public static <T> Result<T> error(String msg) {
        Result r = new Result();
        r.msg = msg;
        r.code = 400;
        r.msg = null;
        return r;
    }
}
