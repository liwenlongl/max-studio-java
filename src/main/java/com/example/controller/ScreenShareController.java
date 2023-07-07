package com.example.controller;


import com.example.common.lang.Result;
import com.example.entity.ScreenShare;
import com.example.service.ScreenShareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author t-rex
 * @since 2023-07-05
 */
@RestController
@RequestMapping("/screenShare")
public class ScreenShareController {

    @Autowired
    private ScreenShareService screenShareService;

    @GetMapping("/list")
    public Result list(){
        List<ScreenShare> list = screenShareService.list();
        return Result.success(list);
    }

}
