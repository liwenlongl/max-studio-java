package com.example.entity;

import java.time.LocalDateTime;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author t-rex
 * @since 2023-07-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class LargeScreen implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 大屏id
     */
    @TableId(value = "id", type = IdType.AUTO)
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
    private Integer currentStatus;

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
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    /**
     * 大屏更新时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;


}
