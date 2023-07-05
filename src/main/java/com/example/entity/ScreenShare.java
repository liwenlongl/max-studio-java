package com.example.entity;

import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author t-rex
 * @since 2023-07-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class ScreenShare implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 大屏id，唯一
     */
    private Integer screenId;

    /**
     * 访问密码
     */
    private String accessPassword;

    /**
     * 分享时间
     */
    private LocalDateTime shareTime;

    /**
     * 过期时间
     */
    private LocalDateTime expireTime;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 修改时间
     */
    private LocalDateTime updateTime;


}
