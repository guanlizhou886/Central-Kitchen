package com.zhg.javakc.modules.material.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.material.entity.materialentity;

import java.util.List;

public interface daomaterial extends BaseDao<materialentity> {
    public List<materialentity> queryrelation();

}
