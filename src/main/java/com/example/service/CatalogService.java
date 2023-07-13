package com.example.service;

import com.example.common.lang.Result;
import com.example.entity.Catalog;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
public interface CatalogService extends IService<Catalog> {

    List<Catalog> getByPid(Long id);

    void removeByPid(Long id);



}
