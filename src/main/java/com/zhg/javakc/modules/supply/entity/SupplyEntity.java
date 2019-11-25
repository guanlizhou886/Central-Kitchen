package com.zhg.javakc.modules.supply.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 * @author 王策
 * @date 2019/11/22 17:12
 */

public class SupplyEntity extends BaseEntity<SupplyEntity> {

    private String supplyId;
    private String supplyName;
    private int supplyType;
    private String supplySimpName;
    private String supplyLawer;
    private String supplyAddress;
    private String supplyLawNum;
    private String supplyRelation;
    private String supplyRelationNum;
    private String supplyRelationEmail;
    private int supplyStatus;
    private int supplyAgreement;
    private String supplySocialCode;
    private int supplySort;
    private int supplyMenHu;
    private String orgtypeId;

    public String getSupplyId() {
        return supplyId;
    }

    public void setSupplyId(String supplyId) {
        this.supplyId = supplyId;
    }

    public String getSupplyName() {
        return supplyName;
    }

    public void setSupplyName(String supplyName) {
        this.supplyName = supplyName;
    }

    public int getSupplyType() {
        return supplyType;
    }

    public void setSupplyType(int supplyType) {
        this.supplyType = supplyType;
    }

    public String getSupplySimpName() {
        return supplySimpName;
    }

    public void setSupplySimpName(String supplySimpName) {
        this.supplySimpName = supplySimpName;
    }

    public String getSupplyLawer() {
        return supplyLawer;
    }

    public void setSupplyLawer(String supplyLawer) {
        this.supplyLawer = supplyLawer;
    }

    public String getSupplyAddress() {
        return supplyAddress;
    }

    public void setSupplyAddress(String supplyAddress) {
        this.supplyAddress = supplyAddress;
    }

    public String getSupplyLawNum() {
        return supplyLawNum;
    }

    public void setSupplyLawNum(String supplyLawNum) {
        this.supplyLawNum = supplyLawNum;
    }

    public String getSupplyRelation() {
        return supplyRelation;
    }

    public void setSupplyRelation(String supplyRelation) {
        this.supplyRelation = supplyRelation;
    }

    public String getSupplyRelationNum() {
        return supplyRelationNum;
    }

    public void setSupplyRelationNum(String supplyRelationNum) {
        this.supplyRelationNum = supplyRelationNum;
    }

    public String getSupplyRelationEmail() {
        return supplyRelationEmail;
    }

    public void setSupplyRelationEmail(String supplyRelationEmail) {
        this.supplyRelationEmail = supplyRelationEmail;
    }

    public int getSupplyStatus() {
        return supplyStatus;
    }

    public void setSupplyStatus(int supplyStatus) {
        this.supplyStatus = supplyStatus;
    }

    public int getSupplyAgreement() {
        return supplyAgreement;
    }

    public void setSupplyAgreement(int supplyAgreement) {
        this.supplyAgreement = supplyAgreement;
    }

    public String getSupplySocialCode() {
        return supplySocialCode;
    }

    public void setSupplySocialCode(String supplySocialCode) {
        this.supplySocialCode = supplySocialCode;
    }

    public int getSupplySort() {
        return supplySort;
    }

    public void setSupplySort(int supplySort) {
        this.supplySort = supplySort;
    }

    public int getSupplyMenHu() {
        return supplyMenHu;
    }

    public void setSupplyMenHu(int supplyMenHu) {
        this.supplyMenHu = supplyMenHu;
    }

    public String getOrgtypeId() {
        return orgtypeId;
    }

    public void setOrgtypeId(String orgtypeId) {
        this.orgtypeId = orgtypeId;
    }
}
