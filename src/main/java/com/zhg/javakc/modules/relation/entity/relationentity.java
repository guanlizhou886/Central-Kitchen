package com.zhg.javakc.modules.relation.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;


public class relationentity extends BaseEntity<relationentity> {
private String SUPPLY_ID;
private String MATERIAL_ID;
private String orgid;

    public String getOrgid() {
        return orgid;
    }

    public void setOrgid(String orgid) {
        this.orgid = orgid;
    }

    public String getSUPPLY_ID() {
        return SUPPLY_ID;
    }

    public void setSUPPLY_ID(String SUPPLY_ID) {
        this.SUPPLY_ID = SUPPLY_ID;
    }

    public String getMATERIAL_ID() {
        return MATERIAL_ID;
    }

    public void setMATERIAL_ID(String MATERIAL_ID) {
        this.MATERIAL_ID = MATERIAL_ID;
    }
}
