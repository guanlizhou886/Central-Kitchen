package com.zhg.javakc.modules.test.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Entity;
import java.util.Date;

/**
 * @author 男神利
 * @date 2019/11/19 12:30
 */
@Data
@Entity
public class TestEntity extends BaseEntity<TestEntity> {

    private String testId;
    private String testName;
    private String testSex;
    private Date testDate;
}
