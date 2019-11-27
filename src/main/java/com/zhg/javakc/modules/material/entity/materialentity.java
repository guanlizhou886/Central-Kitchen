package com.zhg.javakc.modules.material.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;




@Data
public class materialentity extends BaseEntity<materialentity> {
    private String MATERIAL_ID;
    private String MATERIAL_NAME;
    private String MATERIAL_SIMPNAME;
    private String MATERIAL_GUIGE;
    private String type_name;
    private String typeid;
private String MATERIAL_UNIT;
private int MATERIAL_STATUS;
 private byte[] attachment;



}

