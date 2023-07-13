package com.example.service.impl;

import com.example.entity.LargeScreen;
import com.example.mapper.LargeScreenMapper;
import com.example.service.LargeScreenService;
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
public class LargeScreenServiceImpl extends ServiceImpl<LargeScreenMapper, LargeScreen> implements LargeScreenService {

    @Autowired
    private LargeScreenMapper largeScreenMapper;

    @Override
    public List<LargeScreen> selectById(Long catalogueId) {

        return largeScreenMapper.selectById(catalogueId);
    }

    @Override
    public List<LargeScreen> selectByPid(Long parentId) {
        return largeScreenMapper.selectByPid(parentId);
    }

    @Override
    public void removeByScreenPid(Long parentId) {
        largeScreenMapper.removeByScreenPid(parentId);
    }

    @Override
    public void removeScreen(Long type) {
        largeScreenMapper.removeScreen(type);
    }

}
