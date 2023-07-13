package com.example.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CatalogVO {


    private Long id;

    /**
     * 父节点id
     */
    private Long pid;

    /**
     * 目录名称
     */
    private String name;



    /**
     * 子目录列表
     */
    private List<CatalogVO> treeNode;

}
