package com.example.service.impl;

import com.example.common.lang.Result;
import com.example.entity.Catalog;
import com.example.mapper.CatalogMapper;
import com.example.service.CatalogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@Service
public class CatalogServiceImpl extends ServiceImpl<CatalogMapper, Catalog> implements CatalogService {

    @Autowired
    private CatalogMapper catalogMapper;

    @Override
    public List<Catalog> getByPid(Long id) {


        return catalogMapper.getByPid(id);
    }

    @Override
    public void removeByPid(Long id) {
        catalogMapper.removeByPid(id);
    }

//    @Override
//    public Catalog catalogue(Long id, String catalogueName) {
//        Catalog catalog = catalogMapper.selectById(id);
//        catalog.setName(catalogueName);
//
//        return catalog;
//    }
//
//    @Override
//    public Catalog catalogue(Long id, Long pid, String catalogueName) {
//        Catalog catalog = catalogMapper.selectById(id);
//        Catalog newCatalogue = Catalog.builder().pid(pid).name(catalogueName).build();
//        return newCatalogue;
//    }

}
