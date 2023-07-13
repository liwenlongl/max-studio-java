package com.example.mapper;

import com.example.entity.Catalog;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@Mapper
public interface CatalogMapper extends BaseMapper<Catalog> {

    List<Catalog> getByPid(Long id);

    void removeByPid(Long id);


}
