package com.example.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.common.exception.ExpiredException;
import com.example.common.utils.ToRedirect;
import com.example.entity.ScreenShare;
import com.example.mapper.ScreenShareMapper;
import com.example.service.ScreenShareService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@Service
@Slf4j
public class ScreenShareServiceImpl extends ServiceImpl<ScreenShareMapper, ScreenShare> implements ScreenShareService {

    @Autowired
    private ScreenShareMapper screenShareMapper;

    @Override
    public void shareScreen(HttpServletResponse response, Long id) throws IOException {
        ScreenShare screenShare = screenShareMapper.selectById(id);
        LocalDateTime expireTime = screenShare.getExpireTime();
        long time = Timestamp.valueOf(expireTime).getTime();
        LocalDateTime nowTime = LocalDateTime.now();
        long time1 = Timestamp.valueOf(nowTime).getTime();

        if ( (time1 - time) > 0 ) {
            throw new ExpiredException("二维码已过期");
        }
//        ToRedirect redirect = new ToRedirect();
//        redirect.toRedirect(response);
    }

    @Override
    public Page<ScreenShare> pageScreen(Long page, Long pageSize) {

        Page<ScreenShare> screenSharePage = screenShareMapper.selectPage(new Page<>(page, pageSize), null);
        return screenSharePage;
    }
}
