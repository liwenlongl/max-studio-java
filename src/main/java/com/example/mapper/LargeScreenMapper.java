package com.example.mapper;

import com.example.entity.LargeScreen;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import javax.xml.ws.soap.MTOM;
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
public interface LargeScreenMapper extends BaseMapper<LargeScreen> {

    List<LargeScreen> selectById(Long catalogueId);

    List<LargeScreen> selectByPid(Long parentId);

    void removeByScreenPid(Long parentId);

    void removeScreen(Long type);
}
