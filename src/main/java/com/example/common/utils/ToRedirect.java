package com.example.common.utils;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Admin
 * @version 1.0
 * @date 2023/7/11 16:19
 */
public class ToRedirect {

    public void toRedirect(HttpServletResponse response) throws IOException {
        response.sendRedirect("https://www.baidu.com/");
    }
}
