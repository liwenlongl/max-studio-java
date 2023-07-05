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
public class LargeScreen implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 大屏id，唯一
     */
    private Integer screenId;

    /**
     * 大屏访问地址
     */
    private String accessAddress;

    /**
     * 大屏名称
     */
    private String screenName;

    /**
     * 所属的一级类别
     */
    private String firstLevel;

    /**
     * 大屏创作者
     */
    private String creator;

    /**
     * 大屏当前状态，1代表开发中，2代表测试中，3代表应用中
     */
    private Integer currentStatus;

    /**
     * 大屏创建时间
     */
    private LocalDateTime createTime;

    /**
     * 大屏更新时间
     */
    private LocalDateTime updateTime;


}
