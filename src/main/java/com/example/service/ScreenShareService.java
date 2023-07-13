package com.example.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.entity.ScreenShare;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
public interface ScreenShareService extends IService<ScreenShare> {

    void shareScreen(HttpServletResponse response, Long id) throws IOException;

    Page<ScreenShare> pageScreen(Long page, Long pageSize);
}
