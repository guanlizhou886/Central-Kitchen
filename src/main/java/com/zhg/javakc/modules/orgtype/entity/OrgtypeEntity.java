package com.zhg.javakc.modules.orgtype.entity;
import com.zhg.javakc.base.entity.BaseEntity;

/**
 * 组织表 KIT_ORGTYPE
 */
public class OrgtypeEntity extends BaseEntity<OrgtypeEntity> {

    /**
     * ORGTYPE_ID   组织id
     */
    private String    id;
    /**
     * ORGTYPE_NAME  组织名称
      */
    private String    name;
    /**
     *  ORGTYPE_PARENT_ID  组织父类id
     */
    private String    pId;
    /**
     *  PRICEGROUP_ID  价格组id
     */
    private String    pricegroupId;



    //预留字段
    private String    COLUMN_5;
    private String    COLUMN_6;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getPricegroupId() {
        return pricegroupId;
    }

    public void setPricegroupId(String pricegroupId) {
        this.pricegroupId = pricegroupId;
    }

    public String getCOLUMN_5() {
        return COLUMN_5;
    }

    public void setCOLUMN_5(String COLUMN_5) {
        this.COLUMN_5 = COLUMN_5;
    }

    public String getCOLUMN_6() {
        return COLUMN_6;
    }

    public void setCOLUMN_6(String COLUMN_6) {
        this.COLUMN_6 = COLUMN_6;
    }
}
