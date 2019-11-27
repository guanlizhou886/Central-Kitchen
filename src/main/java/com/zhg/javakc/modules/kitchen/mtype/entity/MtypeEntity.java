package com.zhg.javakc.modules.kitchen.mtype.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 *物料类型表
 */
public class MtypeEntity extends BaseEntity<MtypeEntity> {
    private String typeId;
    private String typeParentId;
    private String typeName;
    private String typeSimpName;
    private int typeOpen;

    public int getTypeOpen() {
        return typeOpen;
    }

    public void setTypeOpen(int typeOpen) {
        this.typeOpen = typeOpen;
    }



    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public void setTypeParentId(String typeParentId) {
        this.typeParentId = typeParentId;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public void setTypeSimpName(String typeSimpName) {
        this.typeSimpName = typeSimpName;
    }

    public String getTypeId() {
        return typeId;
    }

    public String getTypeParentId() {
        return typeParentId;
    }

    public String getTypeName() {
        return typeName;
    }

    public String getTypeSimpName() {
        return typeSimpName;
    }

    //    private String column5;
}
