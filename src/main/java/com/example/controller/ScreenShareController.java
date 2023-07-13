package com.example.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.common.lang.Result;
import com.example.entity.ScreenShare;
import com.example.service.ScreenShareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@Controller
@RequestMapping("/share")
public class ScreenShareController {

    @Autowired
    private ScreenShareService screenShareService;


    @ResponseBody
    @RequestMapping("/share")
    public Result<String> share(HttpServletResponse response,Long id) throws IOException {
        screenShareService.shareScreen(response,id);
        return Result.success("分享成功");
    }


    @PostMapping("/add")
    @ResponseBody
    public Result<ScreenShare> addScreen(@RequestBody ScreenShare screenShare) {
        screenShareService.save(screenShare);
        return Result.success(screenShare);
    }


    @DeleteMapping("/delete")
    @ResponseBody
    public Result<String> deleteShare(Long id) {
        screenShareService.removeById(id);
        return Result.success("删除成功");
    }


    @GetMapping("/list")
    @ResponseBody
    public Result list(){
        List<ScreenShare> list = screenShareService.list();
        return Result.success(list);
    }



    @PutMapping("/update")
    @ResponseBody
    public Result<String> update(@RequestBody ScreenShare screenShare) {
        LambdaQueryWrapper<ScreenShare> queryWrapper = new LambdaQueryWrapper<>();

        queryWrapper.eq(ScreenShare::getScreenId,screenShare.getScreenId());

        screenShareService.update(queryWrapper);

        return Result.success("修改成功");
    }

}
