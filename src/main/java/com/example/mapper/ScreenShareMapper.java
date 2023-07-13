package com.example.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.entity.LargeScreen;
import com.example.entity.ScreenShare;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@Mapper
public interface ScreenShareMapper extends BaseMapper<ScreenShare> {

}
