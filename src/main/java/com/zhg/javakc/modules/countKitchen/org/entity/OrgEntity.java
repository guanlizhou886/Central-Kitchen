package com.zhg.javakc.modules.countKitchen.org.entity;
import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Entity;

/**
 * @author 男神利
 * @date 2019/11/22 16:57
 */

@Entity
@Data
public class OrgEntity extends BaseEntity<OrgEntity> {

    private  String orgId;
    private  String orgName;
    private  String OrgPId;



}
