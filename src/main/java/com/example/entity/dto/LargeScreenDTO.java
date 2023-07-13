package com.example.entity.dto;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author Admin
 * @version 1.0
 * @date 2023/7/12 11:47
 */
@Data

public class LargeScreenDTO {

    /**
     * 大屏id
     */
    private Long id;
    /**
     * 大屏名称
     */
    private String screenName;

    /**
     * 大屏创作者
     */
    private String creator;

    /**
     * 大屏当前状态，1代表开发中，2代表测试中，3代表应用中
     */
    private String currentStatus;

    /**
     * 大屏访问地址
     */
    private String accessAddress;

    /**
     * 所属的目录id
     */
    private Integer catalogId;

    /**
     * 大屏创建时间
     */
    private LocalDateTime createTime;

}
