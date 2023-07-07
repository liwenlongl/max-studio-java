package com.example.controller;


import com.example.common.lang.Result;
import com.example.entity.LargeScreen;
import com.example.service.LargeScreenService;
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
@RequestMapping("/largeScreen")
public class LargeScreenController {

    @Autowired
    private LargeScreenService largeScreenService;

    @GetMapping("list")
    public Result list(){
        List<LargeScreen> list = largeScreenService.list();
        return Result.success(list);
    }

}
