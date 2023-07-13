package com.example.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.common.constant.StatusConstant;
import com.example.common.lang.Result;
import com.example.entity.LargeScreen;
import com.example.entity.dto.LargeScreenDTO;
import com.example.service.LargeScreenService;
import io.swagger.annotations.Api;
import javassist.bytecode.SignatureAttribute;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@Slf4j
@RestController
@RequestMapping("/screen")
@Api(tags = "大屏管理")
public class LargeScreenController {

    @Autowired
    private LargeScreenService largeScreenService;

    /**
     * 查询list
     * @param catalogueId
     * @return
     */
    @RequestMapping("/list/{catalogueId}")
    public Result<List<LargeScreenDTO>> getScreen(@PathVariable Long catalogueId) {
        List<LargeScreen> largeScreens = largeScreenService.selectById(catalogueId);


        List<LargeScreenDTO> objects = new ArrayList<>();
        largeScreens.forEach(largeScreen -> {
            LargeScreenDTO largeScreenDTO = new LargeScreenDTO();
            if (largeScreen.getCurrentStatus() == 1) {
                largeScreenDTO.setCurrentStatus(StatusConstant.DEVELOPING);
            } else if (largeScreen.getCurrentStatus() == 2) {
                largeScreenDTO.setCurrentStatus(StatusConstant.TESTING);
            }

            largeScreenDTO.setCurrentStatus(StatusConstant.APPLICATION);
            largeScreenDTO.setId(largeScreen.getId());
            largeScreenDTO.setScreenName(largeScreen.getScreenName());
            largeScreenDTO.setCreator(largeScreen.getCreator());
            largeScreenDTO.setAccessAddress(largeScreen.getAccessAddress());
            largeScreenDTO.setCreateTime(largeScreen.getCreateTime());
            largeScreenDTO.setCatalogId(largeScreen.getCatalogId());
            objects.add(largeScreenDTO);
        });

        return Result.success(objects);
    }

    /**
     *
     * @param id
     * @return
     */
    @DeleteMapping("/delete/{id}")
    public Result<String> deleteById(@PathVariable Long id) {

        largeScreenService.removeById(id);
        return Result.success("删除成功");

    }

    /**
     *
     * @param largeScreen
     * @return
     */
    @PostMapping("/add")
    public Result<LargeScreen> addScreen(@RequestBody LargeScreen largeScreen) {

        largeScreenService.save(largeScreen);
        return Result.success();
    }

    /**
     *
     * @param largeScreen
     * @return
     */
    @PutMapping("/update")
    public Result<LargeScreen> updateScreen(@RequestBody LargeScreen largeScreen) {
        largeScreenService.updateById(largeScreen);
        return Result.success();
    }

    /**
     *
     * @param name
     * @return
     */
    @GetMapping("/search")
    public Result<List<LargeScreen>> searchScreen(@RequestParam String name) {

        LambdaQueryWrapper<LargeScreen> lambdaQueryWrapper = new LambdaQueryWrapper<>();

        lambdaQueryWrapper.eq(LargeScreen::getScreenName, name);

        List<LargeScreen> list = largeScreenService.list(lambdaQueryWrapper);

        return Result.success(list);
    }

}
