package com.example.service;

import com.example.entity.LargeScreen;
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
public interface LargeScreenService extends IService<LargeScreen> {

    List<LargeScreen> selectById(Long catalogueId);

    List<LargeScreen> selectByPid(Long parentId);

    void removeByScreenPid(Long parentId);

    void removeScreen(Long type);
}
