package com.zhg.javakc.modules.materialtree.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;

@Data
public class treeentity extends BaseEntity<treeentity> {
    private String orgid;
    private String orgname;
    private String pid;
    private String TYPE_SIMPNAME;
}
