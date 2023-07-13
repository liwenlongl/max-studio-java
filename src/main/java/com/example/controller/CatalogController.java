package com.example.controller;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.lang.tree.Tree;
import cn.hutool.core.lang.tree.TreeNodeConfig;
import cn.hutool.core.lang.tree.TreeUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.api.R;
import com.example.common.lang.Result;
import com.example.entity.Catalog;
import com.example.entity.LargeScreen;
import com.example.entity.vo.CatalogVO;
import com.example.service.CatalogService;
import com.example.service.LargeScreenService;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@RestController
@RequestMapping("/catalog")
@Slf4j
@Api(tags = "目录层级")
public class CatalogController {

    @Autowired
    private CatalogService catalogService;

    @Autowired
    private LargeScreenService largeScreenService;

    @RequestMapping("/list")
    public Result<List<Tree<String>>> getLargeScreen() {
        List<Catalog> list1 = catalogService.list();

        List<CatalogVO> lists = CollUtil.newArrayList();
        for (int i = 0; i < list1.size(); i++) {
            Catalog catalog = list1.get(i);
            CatalogVO catalogVO = new CatalogVO();
            log.info("large:{}", catalogVO);
            BeanUtils.copyProperties(catalog, catalogVO);
            lists.add(new CatalogVO(catalogVO.getId(), catalogVO.getPid(), catalogVO.getName() ,null));
        }

        TreeNodeConfig config = new TreeNodeConfig();

        // 树形数据中id的属性名,写成id1方便区分,实际上写AClothClassVo实体类的id属性名
        config.setIdKey("id");

        // 展示目录深度,数据中一共四级目录
        config.setDeep(4);

        /**
         * 入参
         * tree:  最终要返回的数据
         * node:  lists数据
         *
         * 返回
         * Tree<String>
         *   Tree: 转换的实体 为数据源里的对象类型
         *   String: ID类型
         *
         */

        List<Tree<String>> list = TreeUtil.build(lists, "0", config, (node, tree) -> {

            tree.setId(node.getId().toString());
            tree.setName(node.getName());
            tree.setParentId(node.getPid().toString());

        });

        return Result.success(list);
    }

    @DeleteMapping("/delete")
    public Result<String> deleteByCatalogueId(@RequestParam Long type) {
//        Catalog catalog = catalogService.getById(type);
//
//        List<Catalog> children = catalogService.getByPid(type);
//        log.info("children:{}",children.toString());
//        if ( catalog != null && children != null ) {
//            List<LargeScreen> largeScreens = largeScreenService.selectByPid(type);
//            if (largeScreens.size() > 0) {
//                largeScreenService.removeByScreenPid(type);
//            }
//            catalogService.removeByPid(type);
//            catalogService.removeById(type);
//        }
        catalogService.removeById(type);
        largeScreenService.removeScreen(type);
        return Result.success();
    }

    @PostMapping("/add")
    public Result<Catalog> addCatalogue(@RequestBody Catalog catalog) {
        catalogService.save(catalog);
        return Result.success();
    }

    /**
     * 对文件进行重命名
     * @param catalog
     * @return
     */
    @PutMapping("/update")
    public Result<Catalog> updateCatalogue(@RequestBody Catalog catalog) {

        log.info("catalog:{}",catalog);
        catalogService.updateById(catalog);

        return Result.success(catalog);
    }

}
